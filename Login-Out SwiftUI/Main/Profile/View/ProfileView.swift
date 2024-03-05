//
//  ProfileView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("profile")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.bottom, 50)
            Button {
                AuthService.shared.signOut()
            } label: {
                Text("Sign Out 🥺")
                    .font(.title3)
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color(uiColor: .systemGray5))
                    .clipShape(Capsule())
                    .padding(.horizontal, 26)
            }
        }
    }
}

#Preview {
    ProfileView()
}
