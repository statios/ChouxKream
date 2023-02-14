//
//  RecommendBrandDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

struct RecommendBrandFixtureDataSource: RecommendBrandDataSource {
    
    func fetchRecommendBrand() -> Single<[Brand]> {
        return .just(
            (0..<3*5).map({ _ in
                Brand(
                    id: UUID().uuidString,
                    name: Fixture.randomBrandName,
                    imageUrl: Fixture.randomTransparentShoeImage
                )
            })
        ).delay(.microseconds(Int.random(in: 0...500)), scheduler: MainScheduler.instance)
    }
    
}
