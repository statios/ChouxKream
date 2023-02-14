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
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/7a8508b1-3c76-4be2-895f-68e9fef98493/Frame_2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T134958Z&X-Amz-Expires=86400&X-Amz-Signature=f0a44f8c452c0dd6c6d72e25587a63ccb59b095cf878d1743b9a7a3759ef9ee9&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25202.png%22&x-id=GetObject",
                title: "퀴즈 오픈 예정",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/13094044-355e-4c9b-bd8c-e35898cc5fa6/Frame_4.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T134949Z&X-Amz-Expires=86400&X-Amz-Signature=876ed3a76a56100c5ac944c31c85cec086565ff2b3ff566ed5b4262826fd4e59&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25204.png%22&x-id=GetObject",
                title: "남성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b7408a94-195b-4948-9755-62ff658cffc7/Frame_3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T134954Z&X-Amz-Expires=86400&X-Amz-Signature=cb6d71ab5ce818e783971e1d4e84101043106425dcbbabfa569c553886f81951&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25203.png%22&x-id=GetObject",
                title: "여성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2b2bb9c5-b911-452e-af0c-ebfd1ae9ebac/Frame_5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T134945Z&X-Amz-Expires=86400&X-Amz-Signature=89206fe318f7e13f17d19ef0c2af64b212350787273459dc6d441732ff6dbf2b&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25205.png%22&x-id=GetObject",
                title: "웰컴드로우",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/562ddc67-2f33-4697-89b0-8a002aa84d51/Frame_6.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T135117Z&X-Amz-Expires=86400&X-Amz-Signature=d9350a12e3c653e580e6c0f03133d759e82fd8dc37d9adb6767778ea8e0a21c0&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25206.png%22&x-id=GetObject",
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
