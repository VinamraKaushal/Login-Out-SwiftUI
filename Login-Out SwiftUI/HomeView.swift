//
//  HomeView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("welcome")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(.bottom, 60)
                Text("Welcome to the app")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.indigo)
                Text("Happy to welcome you onbaord")
                    .font(.title3)
                    .foregroundStyle(.gray)
                    .padding(.bottom)
                NavigationLink(destination: LoginView(), label: {
                    Text("Login")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(Capsule().foregroundColor(.indigo))
                        .padding(.horizontal, 26)
                })
                Spacer()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Create an account")
                        .font(.callout)
                        .foregroundStyle(.indigo)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
