//
//  QuickButtonSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/02.
//

import UIKit
import Kingfisher

class QuickButtonSection: CKRSection {
    
    typealias Cell = QuickButtonCell
    typealias Item = QuickButtonItem
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority = .required
    
    var itemStore: [QuickButtonItem] = []
    
    var header: CKRSectionHeaderItem?
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/5), heightDimension: .estimated(128))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(128))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 5)
        group.interItemSpacing = .fixed(8)
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
        section.interGroupSpacing = 16
        return section
    }
}

struct QuickButtonItem: Hashable {
    var id: String
    var imageUrl: String
    var title: String
    var deeplink: String
    var color: UIColor
}

class QuickButtonCell: CKRAttributedCell<QuickButtonItem> {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func decorate(item: QuickButtonItem) {
        super.decorate(item: item)
        
        imageView.kf.setImage(with: URL(string: item.imageUrl))
        
        titleLabel.text = item.title
        imageView.backgroundColor = item.color
        
        contentView.layoutIfNeeded()
        
        imageView.layer.cornerRadius = traitCollection.horizontalSizeClass == .compact
        ? imageView.frame.height / 2
        : min(12, imageView.frame.height/2)
    }
    
}
