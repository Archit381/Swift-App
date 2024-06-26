
import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            if(showDestinationSearchView){
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            }
            else{
                ScrollView{
                    SearchFilterView(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing:32){
                        ForEach(viewModel.listings, id: \.self){ listing in
                            NavigationLink(value: listing){
                                ListingItemView(listing: listing)
                                    .frame(height: 430)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self){ listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }

        }
    }
}

#Preview {
    ExploreView()
}
