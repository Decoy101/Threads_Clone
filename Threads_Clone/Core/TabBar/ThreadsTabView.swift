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
            FeedView()
                .tabItem{
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
            
            ExploreView()
                .tabItem{
                    Image(systemName: selectedTab == 1 ? "magnifyingglass.fill" : "magnifyingglass")
                }
            CreateThreadView()
                .tabItem{
                    Image(systemName: selectedTab == 2 ? "plus.fill": "plus")
                }
            ActivityView()
                .tabItem{
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: selectedTab == 4 ? "person.fill": "person")
                }
        }
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}
