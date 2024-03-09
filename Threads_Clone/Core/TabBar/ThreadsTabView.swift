//
//  TabView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab){
            Text("FeedView")
                .tabItem{
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
        }
    }
}

#Preview {
    ThreadsTabView()
}
