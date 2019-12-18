//
//  ContentView.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: MockData.posts).navigationBarTitle("Feed")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Feed")
            }.tag(0)
            NavigationView {
                ProfileView().navigationBarTitle("Feed")
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
