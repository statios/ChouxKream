//
//  MerchandiseSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/09.
//

import UIKit

struct MerchandiseSection: CKRSection {
    
    typealias Cell = MerchandiseCell
    typealias Item = MerchandiseItem
    
    var id: String
    
    var priority: CKRSectionPriority {
        return .init(rawValue: 999)
    }
    
    var itemStore: [MerchandiseItem] = []
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        return NSCollectionLayoutSection.plain
    }
    
}

struct MerchandiseItem: Hashable {
    
}

class MerchandiseCell: CKRCell<MerchandiseItem> {
    
    override func decorate(item: MerchandiseItem) {
        
    }
    
}
