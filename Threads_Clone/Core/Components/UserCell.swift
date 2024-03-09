//
//  UserCell.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            VStack(alignment: .leading){
                Text("leclarc")
                    .fontWeight(.semibold)
                Text("Le Clarc")
            }
            .font(.footnote)
            Spacer()
            Button(action:{}){
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(width:100,height:32)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4),lineWidth: 1)
                    }
                    
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
