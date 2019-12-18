//
//  ProfilePostsRowView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfilePostsRowView: View {
    var user: User
    var chunk: Chunk<Post>
    var width: CGFloat

    var body: some View {
        HStack(spacing: 1) {
            ForEach(chunk.items) { post in
                NavigationLink(destination: FeedView(user: self.user)) {
                    Image(post.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.width / 3)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProfilePostsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePostsRowView(user: MockData.users.first!, chunk: MockData.posts.chunked(into: 3).first!, width: 300)
    }
}

