//
//  SectionLayout.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

extension NSCollectionLayoutSection {
    
    static var plain: NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .estimated(128), heightDimension: .estimated(128))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        return NSCollectionLayoutSection(group: group)
    }
    
}
