//
//  RegistrationView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Spacer()
        Text("Create an account")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(width: 340, alignment: .leading)
            .padding(.horizontal, 26)
        Text("Name")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 340, alignment: .leading)
            .padding(.top, 10)
            .padding(.horizontal, 26)
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: 340, height: 50)
                .padding(.horizontal, 26)
            TextField("Enter your full name", text: $viewModel.fullName)
                .font(.subheadline)
                .padding()
                .cornerRadius(10)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .padding(.horizontal, 26)
        }
        Text("Email Address")
            .font(.title3)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)
            .padding(.horizontal, 26)
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: 340, height: 50)
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
                .frame(width: 340, height: 50)
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
            Task { try await viewModel.createUser() }
        }, label: {
            Text("Register")
                .font(.title3)
                .foregroundStyle(.white)
                .frame(width: 340, height: 50)
                .background(.indigo)
                .clipShape(.capsule)
                .padding(.horizontal, 26)
        })
        .padding(.top)
        Spacer()
        HStack(spacing: -10) {
            Text("Already have an Account?")
                .font(.callout)
            Button {
                dismiss()
            } label: {
                Text("Sign in")
                    .font(.callout)
                    .foregroundStyle(.indigo)
            }
        .padding()
        }
    }
}

#Preview {
    RegistrationView()
}
