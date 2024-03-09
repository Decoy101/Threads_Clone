//
//  RegistrationView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct RegistrationView: View {
    @State var userID : String = ""
    @State var password: String = ""
    @State var fullName: String = ""
    @State var userName: String = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            Image("threads-app-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            VStack{
                TextField("Enter your email",text: $userID)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your password",text: $password)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your full name",text: $userID)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your username",text: $userID)
                    .modifier(ThreadsTextFieldModifier())
            }
                Button(action:{
        
                }){
                    Text("Sign up")
                        .modifier(ThreadsButtonModifier())
                    
                }
    
                Spacer()
                Divider()
                HStack{
                    Text("Already have an Account?")
                    Button{
                        dismiss()
                    }
                label:{
                      Text("Log in")
                        .foregroundStyle(.black)
                    }
                }
                .padding()
            }
        
        }
    }


#Preview {
    RegistrationView()
}
