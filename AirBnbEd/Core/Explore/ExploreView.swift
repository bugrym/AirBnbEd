//
//  ExploreView.swift
//  AirBnbEd
//
//  Created by vbugrym on 15.11.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        //lets navigate to another views
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                //lazy stack renders only onscreen views
                LazyVStack(spacing: 32) {
                    ForEach(1...10, id:\.self) { listing in
                        
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
