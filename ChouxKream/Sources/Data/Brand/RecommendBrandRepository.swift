//
//  RecommendBrandRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

protocol RecommendBrandDataSource {
    func fetchRecommendBrand() -> Single<[Brand]>
}

class RecommendBrandRepository: CKRRepository<[Brand]> {
    
    private var fixtureDataSource: RecommendBrandDataSource = RecommendBrandFixtureDataSource()
    
    override func fetch() -> Single<[Brand]> {
        return fixtureDataSource.fetchRecommendBrand()
    }
    
    override func listen() -> Observable<[Brand]> {
        return fetch().asObservable()
    }
    
}
