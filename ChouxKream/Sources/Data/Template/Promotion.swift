//
//  Promotion.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation

struct Promotion {
    var id: String
    var imageUrl: String
    var title: String
    var deeplink: String
    var color: String
}

extension Array where Element == Promotion {
    var toQuickButtonList: [QuickButtonItem] {
        map { promotion in
            QuickButtonItem(
                id: promotion.id,
                imageUrl: promotion.imageUrl,
                title: promotion.title,
                deeplink: promotion.deeplink,
                color: promotion.color
            )
        }
    }
}
