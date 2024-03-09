//
//  FeedView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVStack{
                    ForEach(0...10,id:\.self){ thread in
                        FeedCell()
                        
                    }
                }
            }
            .refreshable{
                print("Debug: Refresh Threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .toolbar{
            ToolbarItem(placement:.navigationBarTrailing){
                Button(action:{}){
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
