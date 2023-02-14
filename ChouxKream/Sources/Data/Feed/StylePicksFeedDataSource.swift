//
//  StylePicksFeedDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

struct StylePicksFeedFixtureDataSource: StylePicksFeedDataSource {
    
    func fetchStylePicksFeed() -> Single<[Feed]> {
        .just(
            (0..<100).map({ _ in
                Feed(
                    id: UUID().uuidString,
                    imageUrl: Fixture.randomStyleImage,
                    username: Fixture.randomUsername,
                    userImageUrl: Fixture.randomUserImage
                )
            })
        ).delay(.microseconds(Int.random(in: 0...500)), scheduler: MainScheduler.instance)
    }
    
}

