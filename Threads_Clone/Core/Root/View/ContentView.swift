//
//  ContentView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ContentViewModel()
    var body: some View {
        Group{
            if vm.userSession != nil{
                ThreadsTabView()
            }
            else{
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
