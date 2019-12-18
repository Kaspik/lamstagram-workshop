//
//  ProfileView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var user: User

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ProfileHeaderView(user: self.user)
                    .padding(.horizontal)
                    .font(.system(size: 15))
                ProfileFriendsView(user: self.user)
                    .padding(.horizontal)
                ProfilePostsView(user: self.user, width: geometry.size.width)
            }
        }.navigationBarTitle(user.name)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: MockData.users.first!)
    }
}
