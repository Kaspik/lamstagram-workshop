//
//  ProfileFriendsView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileFriendsView: View {
    var user: User

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(user.friends) { friend in
                    NavigationLink(destination: ProfileView(user: friend)) {
                        VStack {
                            Image(friend.imageName)
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                            Text(friend.name.uppercased())
                                .font(.caption)
                                .lineLimit(1)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(width: 75, height: 75)
                }
            }
        }
    }
}

struct ProfileFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFriendsView(user: MockData.users.first!)
    }
}
