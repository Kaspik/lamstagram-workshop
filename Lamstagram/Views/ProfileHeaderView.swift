//
//  ProfileHeaderView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User

    var body: some View {
        VStack(spacing: 32) {
            HStack(spacing: 16) {
                Image(user.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                    .clipShape(Circle())
                Spacer()
                VStack {
                    Text("\(user.posts.count)").bold()
                    Text("Posts")
                }
                VStack {
                    Text("\(user.numberOfFollowers)").bold()
                    Text("Followers")
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                VStack {
                    Text("\(user.numberFollowing)").bold()
                    Text("Following")
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
            Text(user.description)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: MockData.users.first!)
    }
}
