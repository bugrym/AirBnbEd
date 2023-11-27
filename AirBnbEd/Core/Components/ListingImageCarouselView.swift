//
//  ListingImageCarouselView.swift
//  AirBnbEd
//
//  Created by vbugrym on 16.11.2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DevPreview.shared.listings[0])
}
