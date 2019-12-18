//
//  PostHeaderView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct PostHeaderView: View {
    var post: Post

    var body: some View {
        HStack(spacing: 16) {
            Image(post.imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 48, height: 48)
            VStack (alignment: .leading) {
                Text(post.user.nickname)
                    .bold()
                Text(post.user.name)
            }
        }
    }
}

struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostHeaderView(post: MockData.posts.first!).frame(width: 400, height: 300, alignment: .leading)
    }
}
