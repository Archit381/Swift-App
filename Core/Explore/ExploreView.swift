
import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                SearchFilterView()
                LazyVStack(spacing:32){
                    ForEach(0 ... 10, id: \.self){ listing in
                        NavigationLink(value: listing){
                            ListingItemView()
                                .frame(height: 430)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){ listing in
                Text("Detail View ....")
            }
        }
    }
}

#Preview {
    ExploreView()
}
