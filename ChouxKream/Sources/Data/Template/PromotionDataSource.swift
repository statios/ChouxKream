//
//  PromotionDataSource.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation
import RxSwift

struct PromotionFixtureDataSource: PromotionDataSource {
    
    func fetchPromotion() -> Single<[Promotion]> {
        return .just([
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://drive.google.com/uc?export=view&id=1PZyXea0Vg0xHbAQn-bMBv9WkGhLgL007",
                title: "퀴즈 오픈 예정",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://drive.google.com/uc?export=view&id=1nXoQ5v6p4SaFMqD9sGO8c4VC7x3kXzcA",
                title: "남성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://drive.google.com/uc?export=view&id=1h65aCoUcEXhOVCsoqCCOjSs6TCAEVjrp",
                title: "여성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://drive.google.com/uc?export=view&id=1UY475j9IHn95FVzFUT9tch9d8SrkIaiN",
                title: "웰컴드로우",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://drive.google.com/uc?export=view&id=1lmzCH9oXxdIp9WjLnuP6zyC1annvKWHN",
                title: "인기 브랜드",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: Fixture.randomTransparentShoeImage,
                title: "정가 아래",
                deeplink: ""
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: Fixture.randomTransparentShoeImage,
                title: "인기 럭셔리",
                deeplink: ""
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: Fixture.randomTransparentShoeImage,
                title: "밸런타인데이",
                deeplink: ""
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: Fixture.randomTransparentShoeImage,
                title: "6만 시크포인트",
                deeplink: ""
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: Fixture.randomTransparentShoeImage,
                title: "태그하고 포인트",
                deeplink: ""
            )
        ]).delay(.microseconds(Int.random(in: 0...500)), scheduler: MainScheduler.instance)
    }
    
}
