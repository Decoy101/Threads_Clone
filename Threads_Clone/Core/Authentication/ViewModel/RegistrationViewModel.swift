//
//  RegistrationViewModel.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    @Published var email : String = ""
    @Published var password: String = ""
    @Published var fullName: String = ""
    @Published var userName: String = ""
    
    @MainActor
    func createUser() async throws{
         try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullName,
            username: userName)
    }
}
