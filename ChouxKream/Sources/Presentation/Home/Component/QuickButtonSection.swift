//
//  QuickButtonSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/02.
//

import UIKit

class QuickButtonSection: CKRSection {
    
    typealias Cell = QuickButtonCell
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority { .required }
    
    var itemStore: [QuickButtonCellItem.ID : QuickButtonCellItem] = [:]
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(128))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(128))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 5)
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
}

struct QuickButtonCellItem: Identifiable {
    var id: String
    var image: UIImage
    var title: String
    var deeplink: String
}

class QuickButtonCell: CKRCell {
    
    typealias Item = QuickButtonCellItem
    
    func configure(item: QuickButtonCellItem) {
        
    }
    
}

