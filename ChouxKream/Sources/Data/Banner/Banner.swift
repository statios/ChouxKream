//
//  Banner.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import UIKit

struct Banner {
    var id: String
    var imageUrl: String
    var deeplink: String
}

extension Array where Element == Banner {
    var toBannerPageItem: BannerPageItem {
        BannerPageItem(
            id: UUID().uuidString,
            bannerItems: map {
                BannerPageItem.BannerItem(id: $0.id, imageUrl: $0.imageUrl, deeplink: $0.deeplink)
            }
        )
    }
}
