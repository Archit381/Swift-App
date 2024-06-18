import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass" )}
            
            WishlistView()
                .tabItem { Label("Explore", systemImage: "heart" )}

            ProfileView()
                .tabItem { Label("Explore", systemImage: "person" )}
        }
        .tint(.red)
    }
}

#Preview {
    MainTabView()
}
