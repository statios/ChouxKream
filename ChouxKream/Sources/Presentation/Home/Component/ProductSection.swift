//
//  ProductSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import UIKit
import Kingfisher

class ProductSection: CKRSection {
    
    typealias Cell = ProductCell
    typealias Item = ProductItem
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority = .required
    
    var itemStore: [ProductItem] = []
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .absolute(224), heightDimension: .estimated(128))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
        section.interGroupSpacing = 8
        section.orthogonalScrollingBehavior = .continuous
        return section
    }
    
}

struct ProductItem: Hashable {
    var id: String
    var imageUrl: String
    var title: String
    var subtitle: String
    var badgeTitle: String?
    var footnote: String
    var caption: String
    var isBookmarked: Bool
}

class ProductCell: CKRAttributedCell<ProductItem> {
    
    @IBOutlet weak var content: UIStackView!
    
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bookmarkButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var badge: UIStackView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    @IBOutlet weak var footnoteLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.layer.cornerRadius = 12
        badge.layer.cornerRadius = 4
        
        bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
        bookmarkButton.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
        
        content.spacing = 4
        content.setCustomSpacing(8, after: imageContainer)
        content.setCustomSpacing(12, after: badge)
        content.setCustomSpacing(2, after: footnoteLabel)
    }
    
    override func decorate(item: ProductItem) {
        super.decorate(item: item)
        
        imageView.backgroundColor = .random.withAlphaComponent(0.125)
        imageView.kf.setImage(with: URL(string: item.imageUrl))
        
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        
        badge.isHidden = item.badgeTitle == nil
        badgeLabel.text = item.badgeTitle
        
        content.setCustomSpacing(badge.isHidden ? 12 : 4, after: subtitleLabel)
        
        footnoteLabel.text = item.footnote
        captionLabel.text = item.caption
        
        bookmarkButton.isSelected = item.isBookmarked
    }
}
