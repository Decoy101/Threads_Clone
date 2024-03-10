//
//  LoginViewModel.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 10/03/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    @MainActor
    func loginUser() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}


