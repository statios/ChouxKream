//
//  PromotionRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation
import RxSwift

protocol PromotionDataSource {
    
    func fetchPromotion() -> Single<[Promotion]>
    
}

class PromotionRepository: CKRRepository<[Promotion]> {
    
    private var fixtureDataSource: PromotionDataSource = PromotionFixtureDataSource()
    
    override func fetch() -> Single<[Promotion]> {
        return fixtureDataSource.fetchPromotion()
    }
    
    override func listen() -> Observable<[Promotion]> {
        return fetch().asObservable()
    }
    
}
