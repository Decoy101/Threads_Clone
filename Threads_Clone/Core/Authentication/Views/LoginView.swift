//
//  LoginView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct LoginView: View {
    @State var loginID: String = ""
    @State var loginPassword: String = ""
    var body: some View {
         NavigationStack{
            VStack{
                Spacer()
                Image("threads-app-icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                VStack{
                    TextField("Enter you email",text: $loginID)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter you password",text: $loginPassword)
                        .modifier(ThreadsTextFieldModifier())
                }
                NavigationLink{
                    Text("Forgot Password")
                }
            label:{
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,20)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.vertical,10)
                
            }
                Button(action:{}){
                    Text("Login")
                        .modifier(ThreadsButtonModifier())
                        
                }
                Spacer()
                Divider()
                HStack{
                    Text("Dont have an Account?")
                    NavigationLink{
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    }
                label:{
                      Text("Sign up")
                        .foregroundStyle(.black)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginView()
}
