//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class HomeViewController: CKRCollectionController {
    
    private let promotionRepository = PromotionRepository()
    
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
                return section
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
    }
    
}

