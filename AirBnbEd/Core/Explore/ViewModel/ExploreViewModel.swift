//
//  ExploreViewModel.swift
//  AirBnbEd
//
//  Created by vbugrym on 26.11.2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("Failder to fetch listings: \(error.localizedDescription)")
        }
    }
}
