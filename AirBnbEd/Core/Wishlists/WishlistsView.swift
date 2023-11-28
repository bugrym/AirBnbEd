//
//  WishlistsView.swift
//  AirBnbEd
//
//  Created by vbugrym on 25.11.2023.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                
                Text("$ 100")
                    .frame(width: 150, height: 50)
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundStyle(.white)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .overlay {
                        Capsule()
                            .stroke(lineWidth: 0.5)
                            .foregroundStyle(Color(.black))
                    }
                    .shadow(color: .black, radius: 2, y: 2)
                
                
//                VStack(alignment: .leading, spacing: 4) {
//                    Text("Log in to view your wishlists")
//                        .font(.headline)
//                    
//                    Text("You can create, view or edit wishlists once you've logged in")
//                        .font(.footnote)
//                }
//                
//                LogInButton() {}
//                
//                Spacer()
            }
//            .padding()
//            .navigationTitle("Wishlists")
        }
        
    }
}

#Preview {
    WishlistsView()
}
