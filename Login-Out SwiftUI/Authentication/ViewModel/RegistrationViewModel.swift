//
//  RegistrationViewModel.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullName)
    }
}
