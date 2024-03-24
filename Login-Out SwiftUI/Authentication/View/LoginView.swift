//
//  LoginView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        Spacer()
        Text("Login")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 26)
            .padding(.bottom, 5)
        Text("Welcome back to the app")
            .font(.title3)
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 26)
        Text("Email Address")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 50)
            .padding(.horizontal, 26)
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .padding(.horizontal, 26)
            TextField("Enter your email", text: $viewModel.email)
                .font(.subheadline)
                .padding()
                .cornerRadius(10)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .padding(.horizontal, 26)
        }
        Text("Password")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)
            .padding(.horizontal, 26)
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .padding(.horizontal, 26)
            SecureField("Enter your password", text: $viewModel.password)
                .font(.subheadline)
                .padding()
                .cornerRadius(10)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .padding(.horizontal, 26)
        }
        Button(action: {
            Task { try await viewModel.login() }
        }, label: {
            Text("Login")
                .font(.title3)
                .foregroundStyle(.white)
                .frame(width: 340, height: 50)
                .background(.indigo)
                .clipShape(.capsule)
                .padding(.horizontal, 26)
        })
        .padding(.top)
            .padding(.bottom)
        Spacer()
        HStack(spacing: -10) {
            Text("Don't have an account?")
                .font(.callout)
            NavigationLink {
                RegistrationView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Sign up")
                    .font(.callout)
                    .foregroundStyle(.indigo)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
