//
//  Feed.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation

struct Feed {
    var id: String
    var imageUrl: String
    var username: String
    var userImageUrl: String
}

extension Array where Element == Feed {
    var toStyleItem: [StyleItem] {
        map { feed in
            StyleItem(
                id: feed.id,
                imageUrl: feed.imageUrl,
                userImageUrl: feed.userImageUrl,
                username: feed.username
            )
        }
    }
}
