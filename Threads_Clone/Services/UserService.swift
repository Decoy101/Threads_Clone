//
//  UserService.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 10/03/24.
//

import Foundation
import FirebaseFirestore
import Firebase

class UserService{
    
    @Published var currentUser: User?
    static let shared = UserService()
    
    init(){
        Task{ try await fetchCurrentUser()}
    }
    
    
    @MainActor
    func fetchCurrentUser() async throws{
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try? snapshot.data(as: User.self)
        self.currentUser = user
    }
    
    func reset(){
        self.currentUser = nil
    }
    
}
