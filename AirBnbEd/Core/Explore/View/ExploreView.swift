//
//  ExploreView.swift
//  AirBnbEd
//
//  Created by vbugrym on 15.11.2023.
//

import SwiftUI
import MapKit

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @State private var showMapView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        //lets navigate to another views
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    //lazy stack renders only onscreen views
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
                .overlay(alignment: .bottom) {
                    MapButton {
                        showMapView.toggle()
                    }
                    .offset(y: -16)
                    .sheet(isPresented: $showMapView) {
                        MapView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}


struct MapView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Map()
            .overlay(alignment: .topLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
                .background(.yellow)
            }
    }
}
