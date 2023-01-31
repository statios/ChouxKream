//
//  RollingBannerDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import Foundation
import RxSwift
import RxCocoa

class RollingBannerDummyDataSource: RollingBannerDataSource {
    
    func fetchAll() -> RxSwift.Single<[RollingBanner]> {
        return .just(
            (1...10).map { _ in .random }
        )
    }
    
}

fileprivate extension RollingBanner {
    static var random: RollingBanner {
        return RollingBanner(id: UUID().uuidString)
    }
}
