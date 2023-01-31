//
//  RollingBannerRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import Foundation
import RxSwift
import RxCocoa

protocol RollingBannerDataSource {
    func fetchAll() -> Single<[RollingBanner]>
}

class RollingBannerRepository {
    
    private var dummyDataSource: RollingBannerDataSource = RollingBannerDummyDataSource()
    
    func fetchAll() -> Single<[RollingBanner]> {
        return dummyDataSource.fetchAll()
    }
    
}
