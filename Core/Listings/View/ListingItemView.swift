import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8){
            // MARK: Images
            CarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // MARK: Listing Details
            HStack(alignment: .top){
                // MARK: Details
                
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundColor(.gray)
                    
                    HStack{
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            
                        
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                // MARK: Ratings
                
                Spacer()
                
                // MARK: Rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    
                    Text("\(listing.rating)")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview().listings[0])
}
