//
//  ProfileView.swift
//  InstagramUI
//
//  Created by Marek Roslik on 3.02.22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileHeader()
            ProfileInfo()
            Spacer()
            TabBar()
        }
        
    }
}

struct ProfileInfo: View {
    var body: some View {
                VStack {
                    HStack {
                        HStack {
                            Image("profile")
                                .resizable()
                                .frame(width: 60, height: 60)
                            .cornerRadius(60)
                        
                    }
                    .overlay(
                        Circle()
                            .stroke(LinearGradient(colors: [.pink, .pink, .orange, .yellow], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 2.3)
                            .frame(width: 68, height: 68)
                    )
                .frame(width: 70, height: 70)
                        VStack {
                            Text("0,000")
                            Text("Post")
                        }
                        VStack {
                            Text("0,000")
                            Text("Followers")
                        }
                        VStack {
                            Text("0,000")
                            Text("Following")
                        }
                    }
                    HStack {
                        Text("Marek roslik")
                        Spacer()
                    }
                      
                    HStack {
                        Text("It's my profile")
                        Spacer()
                    }
                    
                    Button {
                        print("Edit profile")
                    } label: {
                        Text("Edit profile")
                            .foregroundColor(.black)
                            .frame(width: .infinity, height: 30)
                        
                    }
                    .overlay(
                        Rectangle()
                            .stroke(lineWidth: 1)
                    )

                    
                }
        
    }
}

struct ProfileHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 5) {
                Text("Marek Roslik")
                    .font(.title.bold())
                Image(systemName: "chevron.down")
            }
            Spacer()
            
            HStack(alignment: .center, spacing: 20.0) {
                Image("add")
                Image("burger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
        .frame(width: .infinity, height: 44)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
