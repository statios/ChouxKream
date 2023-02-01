//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class HomeViewController: CKRCollectionController {
    
    private let quickButtonRepository: CKRRepository = QuickButtonRepository()
    private let recommendBrandRepository: CKRRepository = RecommendBrandRepository()
    
    override var title: String? {
        get { "추천" }
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .random
        
        quickButtonRepository.listen()
            .map { quickButtons in
                QuickButtonSection()
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
        
        recommendBrandRepository.listen()
            .map { recommendBrands in
                QuickButtonSection()
            }
            .bind(to: rxSection)
            .disposed(by: disposeBag)
    }
    
}

