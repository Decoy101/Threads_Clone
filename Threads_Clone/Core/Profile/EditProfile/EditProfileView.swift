//
//  EditProfileView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Charles LeClarc")
                        }
                        .font(.footnote)
                        Spacer()
                        CircularProfileImageView()
                    }
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("Bio")
                            .fontWeight(.bold)
                        TextField("Enter your bio",text: $bio, axis: .vertical )
                    }
                    .font(.footnote)
                    
                    Divider()
                    VStack(alignment:.leading){
                        Text("Link")
                            .fontWeight(.bold)
                        TextField("Add Link ...", text: $link)
                    }
                    .font(.footnote)
                    Divider()
                    Toggle("Private Profile",isOn: $isPrivateProfile)
                    
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                }
                .padding()
                
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action:{}){
                        Text("Cancel")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
            
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{}){
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
            }
            
        }
    }
}

#Preview {
    EditProfileView()
}
