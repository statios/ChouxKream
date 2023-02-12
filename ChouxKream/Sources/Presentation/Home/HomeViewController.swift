//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class HomeViewController: CKRCollectionController {
    
    private let promotionRepository = PromotionRepository()
    private let droppedProductRepository = DroppedProductRepository()
    private let recommendBrandRepository = RecommendBrandRepository()
    
    override var title: String? {
        get { "추천" }
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
        
        recommendBrandRepository.listen()
            .map { brands in
                let section = QuickButtonSection()
                section.itemStore = brands.toQuickButtonItem
                section.priority = .init(rawValue: 997)
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
    }
    
}

