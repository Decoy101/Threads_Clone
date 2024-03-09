//
//  ThreadsButtonModifier.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation
import SwiftUI

struct ThreadsButtonModifier:ViewModifier{
    func body(content: Content)->some View{
        content
            .font(.subheadline)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(Color.white)
            .frame(width: 320, height: 50)
            .background(Color.black)
            .cornerRadius(10)
            .padding(20)
    }
    
}
