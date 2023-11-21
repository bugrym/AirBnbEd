//
//  ListingImageCarouselView.swift
//  AirBnbEd
//
//  Created by vbugrym on 16.11.2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = ["image-1",
                  "image-2",
                  "image-3",
                  "image-4"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
