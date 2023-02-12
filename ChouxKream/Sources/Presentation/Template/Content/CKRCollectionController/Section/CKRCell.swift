//
//  CKRCell.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

protocol CKRCellEventListener: AnyObject {
    func receive(cellEvent: String, userInfo: [String: Any?])
}

class CKRCell: UICollectionViewCell {
    
    weak var listener: CKRCellEventListener?
    
    var indexPath: IndexPath?

    func configure(item: AnyHashable, section: any CKRSection, indexPath: IndexPath) {
        if let section = section as? CKRCellEventListener {
            listener = section
        }
        self.indexPath = indexPath
    }

}

class CKRAttributedCell<Item>: CKRCell {
    
    final override func configure(item: AnyHashable, section: any CKRSection, indexPath: IndexPath) {
        super.configure(item: item, section: section, indexPath: indexPath)
        
        if let item = item as? Item {
            decorate(item: item)
        }
    }
    
    func decorate(item: Item) {
        
    }
    
}
