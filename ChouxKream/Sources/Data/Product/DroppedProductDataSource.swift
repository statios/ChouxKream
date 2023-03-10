//
//  ProductDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation
import RxSwift

struct DroppedProductFixtureDataSource: DroppedProductDataSource {
    
    func fetchDroppedProduct() -> Single<[Product]> {
        return .just(
            (0...100).map({ _ in
                Product(
                    id: UUID().uuidString,
                    name: Fixture.randomProductName,
                    imageUrl: Fixture.randomTransparentShoeImage,
                    brandName: Fixture.randomBrandName,
                    price: Fixture.randomPrice,
                    isQuickDelivery: Bool.random(),
                    isBookmarked: Bool.random()
                )
            })
        )
    }
    
}
