//
//  MapButton.swift
//  AirBnbEd
//
//  Created by vbugrym on 28.11.2023.
//

import SwiftUI

struct MapButton: View {
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Text("Map")
                
                Image(systemName: "paperplane")
            }
            .foregroundStyle(.white)
            .frame(width: 100, height: 50)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    MapButton { }
}
