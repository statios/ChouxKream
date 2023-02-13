//
//  BannerSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit
import Kingfisher

class BannerPageSection: CKRSection, CKRCellEventListener {
    
    typealias Cell = BannerPageCell
    typealias Item = BannerPageItem
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority = .required
    
    var header: CKRSectionHeaderItem?
    
    var itemStore: [BannerPageItem] = []
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(256))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        return section
    }
    
}

struct BannerPageItem: Hashable {
    
    var id: String
    var bannerItems: [BannerItem]
    
    struct BannerItem: Hashable {
        var id: String
        var imageUrl: String
        var deeplink: String
    }
}

class BannerPageCell: CKRAttributedCell<BannerPageItem> {
    
    var pageController: CKRPageController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.pageController?.willMove(toParent: nil)
        self.pageController?.view.removeFromSuperview()
        self.pageController?.didMove(toParent: nil)
        self.pageController?.removeFromParent()
        self.pageController = nil
    }
    
    override func decorate(item: BannerPageItem) {
        super.decorate(item: item)
        
        let viewControllers = item.bannerItems.map { item in
            return BannerViewController.create(item.toBannerViewControllerItem)
        }
        
        let pageController = CKRLinearPageController(viewControllers)
        
        viewController?.addChild(pageController)
        
        pageController.willMove(toParent: viewController)
        
        contentView.addSubview(pageController.view)
        pageController.view.translatesAutoresizingMaskIntoConstraints = false
        pageController.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        pageController.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        pageController.view.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        pageController.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        pageController.view.backgroundColor = .random
        
        pageController.didMove(toParent: viewController)
        
        self.pageController = pageController
    }
}
