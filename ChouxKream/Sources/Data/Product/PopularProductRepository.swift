//
//  PopuplarProductRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

protocol PopularProductDataSource {
    func fetchPopularProduct() -> Single<[Product]>
}

class PopularProductRepository: CKRRepository<[Product]> {
    
    private var fixtureDataSource: PopularProductDataSource = PopularProductFixtureDataSource()
    
    override func fetch() -> Single<[Product]> {
        return fixtureDataSource.fetchPopularProduct()
    }
    
    override func listen() -> Observable<[Product]> {
        return fetch().asObservable()
    }
    
}
