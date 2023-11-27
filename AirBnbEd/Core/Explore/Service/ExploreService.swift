//
//  ExploreService.swift
//  AirBnbEd
//
//  Created by vbugrym on 26.11.2023.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DevPreview.shared.listings
    }
}
