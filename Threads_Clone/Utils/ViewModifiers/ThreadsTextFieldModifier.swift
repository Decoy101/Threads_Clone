//
//  ThreadsTextFieldModifier.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 20)
    }
}
