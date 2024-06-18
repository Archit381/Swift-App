import SwiftUI

struct ListingItemView: View {
        
    var body: some View {
        VStack(spacing: 8){
            // MARK: Images
            CarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // MARK: Listing Details
            HStack(alignment: .top){
                // MARK: Details
                
                VStack(alignment: .leading){
                    Text("Miami Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundColor(.gray)
                    
                    HStack{
                        Text("$567")
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
                    
                    Text("4.86")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ListingItemView()
}
