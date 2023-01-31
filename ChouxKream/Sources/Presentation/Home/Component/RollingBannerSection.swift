//
//  RollingBannerSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

class RollingBannerSection: CKRSection {
    
    override var cellType: CKRCell.Type {
        return RollingBannerCell.self
    }
    
    override var layout: NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(128))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
}

class RollingBannerCell: CKRCell {
    
    override func configure(item: AnyHashable) {
        
        contentView.subviews.forEach { subview in
            subview.removeFromSuperview()
        }
        
        contentView.backgroundColor = .random
        
        let content = CKRPageViewController.create([
            SomeViewController(),
            SomeViewController(),
            SomeViewController(),
            SomeViewController(),
            SomeViewController()
        ]).view!
        
        let container = contentView

        content.translatesAutoresizingMaskIntoConstraints = false
        
        container.addSubview(content)
        
        NSLayoutConstraint.activate([
            content.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            content.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            content.topAnchor.constraint(equalTo: container.topAnchor),
            content.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
    }
    
}

class SomeViewController: UIViewController {
    
    override var title: String? {
        get { "SOME"}
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
