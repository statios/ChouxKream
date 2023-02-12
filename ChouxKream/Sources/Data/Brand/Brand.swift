//
//  Brand.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import UIKit

struct Brand {
    var id: String
    var name: String
    var imageUrl: String
}

extension Array where Element == Brand {
    var toQuickButtonItem: [QuickButtonItem] {
        map { brand in
            QuickButtonItem(
                id: brand.id,
                imageUrl: brand.imageUrl,
                title: brand.name,
                deeplink: "",
                color: UIColor.tertiarySystemFill
            )
        }
    }
}
