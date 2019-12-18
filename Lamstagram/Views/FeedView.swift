//
//  FeedView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    var posts: [Post]
    var body: some View {
        ScrollView(.vertical) {
            ForEach(posts) { post in
                PostView(post: post)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(posts: MockData.posts)
    }
}
