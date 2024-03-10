//
//  AuthService.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
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
            try await UserService.shared.fetchCurrentUser()
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
            try await uploadInfo(withEmail: email, id: result.user.uid, fullName: fullName, userName: username)
        }
        catch{
            print("Debug: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    
    func signOut() {
        self.userSession = nil
        try? Auth.auth().signOut()
        UserService.shared.reset()
    }
    
    
    func uploadInfo(withEmail email: String, id: String, fullName: String, userName: String) async throws {
        let user = User(id: id,fullName: fullName, email: email, userName: userName)
        guard let userData = try? Firestore.Encoder().encode(user) else {return}
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }
}
