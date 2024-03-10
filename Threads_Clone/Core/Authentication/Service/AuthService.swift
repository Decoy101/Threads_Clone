//
//  AuthService.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation
import FirebaseAuth
class AuthService{
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Created User \(result.user.uid)")
        }
        catch{
            print("Debug: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func createUser(withEmail email: String, password: String, fullName: String, username: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Created User \(result.user.uid)")
        }
        catch{
            print("Debug: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    
    func signOut() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
}
