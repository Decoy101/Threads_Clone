//
//  ExploreView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct ExploreView: View {
    @State var search: String = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(1...10, id: \.self){ user in
                        VStack{
                            UserCell()
                            Divider()
                            
                        }
                        .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $search,prompt:"Search")
        }
    }
}

#Preview {
    ExploreView()
}
