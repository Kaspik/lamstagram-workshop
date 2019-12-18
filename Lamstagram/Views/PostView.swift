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
    @State var isPresented: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: ProfileView(user: post.user)) {
                PostHeaderView(post: self.post).padding(.horizontal)
            }
            .buttonStyle(PlainButtonStyle())
            Button(action: {
                self.isPresented = true
            }, label: {
                Image(self.post.imageName)
                    .resizable().aspectRatio(contentMode: .fit)
            })
                .buttonStyle(PlainButtonStyle())
                .sheet(isPresented: self.$isPresented, content: {
                    Image(self.post.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.bottom)
                })
            PostToolbarView(post: post)
                .padding()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MockData.posts.first!)
    }
}
