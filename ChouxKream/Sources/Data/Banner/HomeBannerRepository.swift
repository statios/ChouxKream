//
//  HomeBannerRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

protocol HomeBannerDataSource {
    func fetchHomeBanner() -> Single<[Banner]>
}

class HomeBannerRepository: CKRRepository<[Banner]> {
    
    private var fixtureDataSource: HomeBannerDataSource = HomeBannerFixtureDataSource()
    
    override func fetch() -> Single<[Banner]> {
        return fixtureDataSource.fetchHomeBanner()
    }
    
    override func listen() -> Observable<[Banner]> {
        return fetch().asObservable()
    }
    
}
