//
//  ContentView.swift
//  Lamstagram
//
//  Created by Jan Kaltoun on 16/11/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userStore: AuthenticatedUserStore
    
    var body: some View {
        TabView {
            NavigationView {
                FeedView(user: userStore.user!)
                    .navigationBarTitle("Feed")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Feed")
            }.tag(0)
            NavigationView {
                ProfileView(user: userStore.user!)
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
