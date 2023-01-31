//
//  CKRSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

class CKRSection {
    
    var id: String = UUID().uuidString
    
    var priority: CKRSectionPriority = .required
    
    var layout: NSCollectionLayoutSection {
        .plain
    }
    
    var itemStore: [AnyHashable]
    
    init(items: [AnyHashable]) {
        self.itemStore = items
    }
    
    var cellType: CKRCell.Type {
        return CKRCell.self
    }
    
}

extension CKRSection: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension CKRSection: Comparable {
    
    static func < (lhs: CKRSection, rhs: CKRSection) -> Bool {
        return lhs.priority.rawValue > rhs.priority.rawValue
    }
    
    static func == (lhs: CKRSection, rhs: CKRSection) -> Bool {
        return lhs.id == rhs.id
    }
    
}

struct CKRSectionPriority: Hashable, Equatable, RawRepresentable {
    
    private static var minimum: Float {
        return .zero
    }
    
    private static var maximum: Float {
        return 1000
    }
    
    var rawValue: Float
    
    init(rawValue: Float) {
        var value = rawValue
        value = max(value, CKRSectionPriority.minimum)
        value = min(value, CKRSectionPriority.maximum)
        self.rawValue = value
    }
    
    static var required: Self {
        return Self.init(rawValue: 1000)
    }
    
    static var defaultHigh: Self {
        return Self.init(rawValue: 750)
    }
    
    static var defaultLow: Self {
        return Self.init(rawValue: 250)
    }
    
}
