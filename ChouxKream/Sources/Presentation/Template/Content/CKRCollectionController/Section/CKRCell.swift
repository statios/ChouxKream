//
//  CKRCell.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

class CKRCell<Item>: UICollectionViewCell {
    
    func configure(item: AnyHashable) {
        if let item = item as? Item {
            decorate(item: item)
        }
    }
    
    func decorate(item: Item) {
        
    }
    
}
