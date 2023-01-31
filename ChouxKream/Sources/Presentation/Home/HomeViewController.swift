//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class HomeViewController: CKRCollectionController {
    
    private let rollingBannerRepository = RollingBannerRepository()
    
    override var title: String? {
        get { "추천" }
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .random
        
        rollingBannerRepository.fetchAll()
            .map { RollingBannerSection(items: [$0]) }
            .asObservable()
            .bind(to: rxSection)
            .disposed(by: disposeBag)
    }
    
}

