//
//  CircularProfileImageView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("le-clarc")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:50,height:40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircularProfileImageView()
}
