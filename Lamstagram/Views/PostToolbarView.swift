//
//  PostToolbarView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct PostToolbarView: View {
    var post: Post
    @EnvironmentObject var likedPostsStore: LikedPostsStore
    
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                self.likedPostsStore.toggle(post: self.post)
            }, label: {
                if likedPostsStore.isLiked(post: post) {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            })
                .buttonStyle(PlainButtonStyle())

            Image(systemName: "text.bubble")
            Image(systemName: "paperplane")
            Spacer()
            Image(systemName: "bookmark")
        }
    }
}

struct PostToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        PostToolbarView(post: MockData.posts.first!)
        .environmentObject(LikedPostsStore())
    }
}
