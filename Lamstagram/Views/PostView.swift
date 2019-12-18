//
//  PostView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var post: Post
    var body: some View {
        VStack(alignment: .leading) {
            PostHeaderView(post: self.post).padding(.horizontal)
                Image(self.post.imageName)
                    .resizable().aspectRatio(contentMode: .fit)
                PostToolbarView().padding()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MockData.posts.first!)
    }
}
