//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit
import RxSwift

class HomeViewController: CKRCollectionController {
    
    private let homeBannerRepository = HomeBannerRepository()
    private let promotionRepository = PromotionRepository()
    private let droppedProductRepository = DroppedProductRepository()
    private let recommendBrandRepository = RecommendBrandRepository()
    
    override var title: String? {
        get { "추천" }
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeBannerRepository.listen()
            .map { banners in
                let section = BannerPageSection()
                section.itemStore = [banners.toBannerPageItem]
                section.priority = .init(rawValue: 1000)
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)

        promotionRepository.listen()
            .map { promotions in
                let section = QuickButtonSection()
                section.itemStore = promotions.toQuickButtonList
                section.priority = .init(rawValue: 999)
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)

        droppedProductRepository.listen()
            .map { products in
                let section = ProductSection()
                section.itemStore = products.toProductList
                section.priority = .init(rawValue: 998)
                section.header = CKRSectionHeaderItem(title: "Just Dropped", subtitle: "발매 상품")
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
        
        recommendBrandRepository.listen()
            .map { brands in
                let section = QuickButtonSection()
                section.itemStore = brands.toQuickButtonItem
                section.priority = .init(rawValue: 997)
                section.header = CKRSectionHeaderItem(title: "Brand Focus", subtitle: "추천 브랜드")
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
    }
    
}

