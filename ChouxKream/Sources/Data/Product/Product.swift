//
//  Product.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation

struct Product {
    var id: String
    var name: String
    var imageUrl: String
    var brandName: String
    var price: Int
    
    var isQuickDelivery: Bool
    var isBookmarked: Bool
}

extension Array where Element == Product {
    var toProductList: [ProductItem] {
        map { product in
            ProductItem(
                id: product.id,
                imageUrl: product.imageUrl,
                title: product.brandName,
                subtitle: product.name,
                badgeTitle: product.isQuickDelivery ? "빠른배송" : nil,
                footnote: product.price.generateComma(),
                caption: "즉시구매가",
                isBookmarked: product.isBookmarked
            )
        }
    }
}
