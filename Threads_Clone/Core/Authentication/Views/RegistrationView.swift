//
//  RegistrationView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var vm = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            Image("threads-app-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            VStack{
                TextField("Enter your email",text: $vm.email)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your password",text: $vm.password)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your full name",text: $vm.fullName)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your username",text: $vm.userName)
                    .modifier(ThreadsTextFieldModifier())
            }
                Button(action:{
                    Task { try await vm.createUser() }
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
