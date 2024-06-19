import Foundation


class ExploreService{
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview().listings
    }
}
