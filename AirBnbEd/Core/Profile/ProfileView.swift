//
//  ProfileView.swift
//  AirBnbEd
//
//  Created by vbugrym on 24.11.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.title)
                    .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip.")
                        .font(.subheadline)
                }
                
                LogInButton() {}
                
                HStack {
                    Text("Don't have an account?")
                    
                    Button(action: {}, label: {
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                            .underline()
                    })
                }
                .font(.caption)
                
            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}

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
