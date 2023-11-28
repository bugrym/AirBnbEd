//
//  LogInButton.swift
//  AirBnbEd
//
//  Created by vbugrym on 28.11.2023.
//

import SwiftUI

struct LogInButton: View {
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("Log in")
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .background(.pink)
                .font(.subheadline)
                .fontWeight(.semibold)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LogInButton { }
}
