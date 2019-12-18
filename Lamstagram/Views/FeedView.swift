//
//  FeedView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var feedStore: FeedStore
    @State var isGrowing: Bool = true

    init(user: User) {
        feedStore = FeedStore(user: user)
    }

    var body: some View {
        Group {
            if feedStore.posts.isEmpty {
                Image("llama")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(self.isGrowing ? 1.5 : 1)
                    .animation(Animation.default.repeatForever().delay(0.8))
                    .onAppear {
                        self.isGrowing.toggle()
                    }
            } else {
                ScrollView(.vertical) {
                    ForEach(feedStore.posts) { post in
                        PostView(post: post)
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(user: MockData.users.first!)
    }
}
