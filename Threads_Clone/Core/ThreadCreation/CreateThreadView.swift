//
//  CreateThreadView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct CreateThreadView: View {
    @State var threadContent: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    CircularProfileImageView()
                    VStack(alignment: .leading){
                        Text("leclarc")
                            .fontWeight(.semibold)
                        TextField("Start a thread",text: $threadContent)
                    }
                    .font(.footnote)
                    Spacer()
                    if !threadContent.isEmpty{
                        Button(action:{
                            threadContent = ""
                        }){
                            Image(systemName:"xmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:10)
                                .foregroundColor(Color(.systemGray2))
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Create Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action:{
                        dismiss()
                    }){
                        Text("Cancel")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Text("Post")
                        .disabled(threadContent.isEmpty) 
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .opacity(threadContent.isEmpty ? 0.5 : 1)
                        
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
