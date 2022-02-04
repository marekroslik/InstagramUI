//
//  ContentView.swift
//  InstagramUI
//
//  Created by Marek Roslik on 3.02.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "profile", description: "Content by me")
            }
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(alignment: .center, spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Marek Roslik"
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.pink, .pink, .orange, .yellow], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
                Story(image: "profile", name: "Marek Roslik")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 9.0) {
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Marek Roslik")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("more")
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
    }
}

struct PostContent: View {
    var image: String = "profile"
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10.0) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    var image: String = "profile"
    var description: String = "Content by me"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Marek Roslik and 1000 others")
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 9)
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text("❤️")
                    Text("🙌")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.top, 10)
            .padding(.horizontal, 25)
        }
    }
}
