//
//  LoginViewModel.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
