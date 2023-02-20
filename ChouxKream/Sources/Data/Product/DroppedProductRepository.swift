//
//  ProductRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation
import RxSwift

protocol DroppedProductDataSource {
    func fetchDroppedProduct() -> Single<[Product]>
}

class DroppedProductRepository: CKRRepository<[Product]> {
    
    private var fixtureDataSource: DroppedProductDataSource = DroppedProductFixtureDataSource()
    
    override func fetch() -> Single<[Product]> {
        return fixtureDataSource.fetchDroppedProduct()
    }
    
    override func listen() -> Observable<[Product]> {
        return fetch().asObservable()
    }
    
}
