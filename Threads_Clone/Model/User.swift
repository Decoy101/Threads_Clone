//
//  User.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 10/03/24.
//

import Foundation


struct User: Identifiable, Codable{
    var id: String
    var fullName: String
    var email: String
    var userName: String
    var bio: String?
    var profileImageUrl: String?
   
}

