//
//  ProfileView.swift
//  Threads_Clone
//
//  Created by Aman Gupta on 09/03/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var vm = ProfileViewModel()
    @State var selectedFilter : ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterTabWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    private var currentUser: User?{
        return vm.currentUser
    }
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack(spacing:10){
                    HStack(alignment: .top){
                        VStack(alignment:.leading, spacing:12){
                            VStack(alignment: .leading, spacing: 4){
                                Text(currentUser?.fullName ?? "")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text(currentUser?.userName ?? "")
                                    .font(.subheadline)
                            }
                            Text("Formula 1 driver for scuderia ferari")
                                .font(.footnote)
                            Text("2 Followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    Button(action:{}){
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity,minHeight:32)
                            .background(Color.black)
                            .cornerRadius(8)
                        
                    }
                    
                    VStack{
                        HStack{
                            ForEach(ProfileThreadFilter.allCases){ filter in
                                VStack{
                                    Text(filter.title)
                                        .font(.subheadline)
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundStyle(.black)
                                            .frame(width: filterTabWidth, height:1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    }
                                    else{
                                        Rectangle()
                                            .foregroundStyle(.clear)
                                            .frame(width:filterTabWidth,height:1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring){
                                        selectedFilter = filter
                                    }
                                }
                                
                            }
                        }
                    }
                    .padding(.vertical,10)
                }
                .padding(.horizontal,20)
            }
            .toolbar{
                ToolbarItem{
                    Button(action:{
                        AuthService.shared.signOut()
                    }){
                        Image(systemName:"line.3.horizontal")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
