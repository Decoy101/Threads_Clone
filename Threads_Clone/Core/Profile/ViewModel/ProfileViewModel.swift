//
//  ViewModel.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 10/03/24.
//

import Foundation
import Combine
class ProfileViewModel: ObservableObject{
    @Published var currentUser: User?
    var cancellables = Set<AnyCancellable>()
    
    
    init(){
        setSubscribers()
    }
    
    private func setSubscribers(){
        UserService.shared.$currentUser.sink{ [weak self] user in
            self?.currentUser = user
            print("Debug: Current User is \(String(describing: user))")
        }
        .store(in: &cancellables)
    }
}
