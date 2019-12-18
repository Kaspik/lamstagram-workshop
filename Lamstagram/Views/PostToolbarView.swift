//
//  PostToolbarView.swift
//  Lamstagram
//
//  Created by Jakub Kašpar on 18/12/2019.
//  Copyright © 2019 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct PostToolbarView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "heart")
            Image(systemName: "text.bubble")
            Image(systemName: "paperplane")
            Spacer()
            Image(systemName: "bookmark")
        }
    }
}

struct PostToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        PostToolbarView()
    }
}
