//
//  ProfilePostsView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfilePostsView: View {
    var user: User
    var width: CGFloat

    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            ForEach(self.user.posts.chunked(into: 3)) { chunk in
                ProfilePostsRowView(user: self.user, chunk: chunk, width: self.width)
            }
        }
    }
}

struct ProfilePostsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePostsView(user: MockData.users.first!, width: 300)
    }
}
