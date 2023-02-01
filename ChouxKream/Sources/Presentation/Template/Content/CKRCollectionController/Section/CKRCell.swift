//
//  CKRCell.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

protocol CKRCell {
    associatedtype Item: Identifiable
    func configure(item: Item)
}
