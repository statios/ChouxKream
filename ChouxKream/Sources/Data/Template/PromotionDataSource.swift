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
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/7a8508b1-3c76-4be2-895f-68e9fef98493/Frame_2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230211%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230211T193548Z&X-Amz-Expires=86400&X-Amz-Signature=5307e7031ca14dffc9cb75c9aec7732394c9d6a07669b0cfd86c017514b8add0&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25202.png%22&x-id=GetObject",
                title: "퀴즈 오픈 예정",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b7408a94-195b-4948-9755-62ff658cffc7/Frame_3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230211%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230211T193555Z&X-Amz-Expires=86400&X-Amz-Signature=cce236cb5e3f534a862db6f702d70eb5727fcb38b104526dfb0b98b1c31c979a&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25203.png%22&x-id=GetObject",
                title: "남성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/13094044-355e-4c9b-bd8c-e35898cc5fa6/Frame_4.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230211%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230211T193559Z&X-Amz-Expires=86400&X-Amz-Signature=1cadb63f6c564b7cd214de4bc78cbea9e421d2ad5960e0c45bc013a70973abaa&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25204.png%22&x-id=GetObject",
                title: "여성 추천",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2b2bb9c5-b911-452e-af0c-ebfd1ae9ebac/Frame_5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230211%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230211T193605Z&X-Amz-Expires=86400&X-Amz-Signature=92ad09dbc21e4eca73b10b2b3f83302ec4c9ccaf102b469335e7f6b08723c83e&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25205.png%22&x-id=GetObject",
                title: "웰컴드로우",
                deeplink: "",
                color: "#000000"
            ),
            Promotion(
                id: UUID().uuidString,
                imageUrl: "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/562ddc67-2f33-4697-89b0-8a002aa84d51/Frame_6.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230211%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230211T193610Z&X-Amz-Expires=86400&X-Amz-Signature=efa04014cac9a4d6f29d2692c285c212442c3ef04e9ec2e9a2b5b2654130101f&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25206.png%22&x-id=GetObject",
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
        ])
    }
    
}
