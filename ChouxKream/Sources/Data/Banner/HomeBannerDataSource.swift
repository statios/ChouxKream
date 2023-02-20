//
//  HomeBannerDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

struct HomeBannerFixtureDataSource: HomeBannerDataSource {
    
    func fetchHomeBanner() -> Single<[Banner]> {
        return .just(
            (0..<5).map({ _ in
                Banner(
                    id: UUID().uuidString,
                    imageUrl: Fixture.randomArchitectureImage,
                    deeplink: ""
                )
            })
        ).delay(.microseconds(Int.random(in: 0...500)), scheduler: MainScheduler.instance)
    }
    
}
