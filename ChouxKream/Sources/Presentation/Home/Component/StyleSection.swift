//
//  StyleSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit
import Kingfisher

class StyleSection: CKRSection, CKRCellEventListener {
    
    typealias Cell = StyleCell
    typealias Item = StyleItem
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority = .required
    
    var header: CKRSectionHeaderItem?
    
    var itemStore: [StyleItem] = []
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .absolute(128), heightDimension: .absolute(196))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
        section.interGroupSpacing = 8
        return section
    }
    
}

struct StyleItem: Hashable {
    
    var id: String
    var imageUrl: String
    var userImageUrl: String
    var username: String
}

class StyleCell: CKRAttributedCell<StyleItem> {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = .random.withAlphaComponent(0.125)
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 12
        
        userImageView.layer.cornerRadius = 16
        userImageView.layer.borderColor = UIColor.white.cgColor
        userImageView.layer.borderWidth = 2
    }
    
    override func decorate(item: StyleItem) {
        super.decorate(item: item)
        
        imageView.kf.setImage(with: URL(string: item.imageUrl))
        userImageView.kf.setImage(with: URL(string: item.userImageUrl))
        usernameLabel.text = item.username
    }
}

