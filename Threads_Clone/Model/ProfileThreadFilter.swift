//
//  ProfileThreadFilter.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation
enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    case reposts
    
    var title: String{
        switch self{
        case .threads: return "Threads"
        case .replies: return "Replies"
        case .reposts: return "Reposts"
        }
    }
    
    var id: Int { return self.rawValue }
}
