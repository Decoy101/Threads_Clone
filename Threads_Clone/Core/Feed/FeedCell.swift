//
//  FeedCell.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            HStack(alignment:.top, spacing:12){
                Image("le-clarc")
                    .resizable()
                    .scaledToFill()
                    .frame(width:40,height:40)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    HStack{
                        Text("Leclarc")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        Button(action:{}){
                            Image(systemName:"ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    Text("Formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    HStack{
                        Button(action:{}){
                            Image(systemName:"heart")
                        }
                        Button(action:{}){
                            Image(systemName:"bubble.right")
                        }
                        Button(action:{}){
                            Image(systemName:"arrow.rectanglepath")
                        }
                        Button(action:{}){
                            Image(systemName:"paperplane")
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical,8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    FeedCell()
}
