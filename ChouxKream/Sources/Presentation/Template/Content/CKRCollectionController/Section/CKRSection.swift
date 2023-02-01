//
//  CKRSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

//struct AnySection: Hashable {
//    
//    var base: Any
//    
//    init<SectionType>(_ base: SectionType) where SectionType: CKRSection {
//        self.base = base
//    }
//    
//    static func == (lhs: AnySection, rhs: AnySection) -> Bool {
//        
//    }
//    
//}

protocol CKRSection: Hashable, Comparable {
    associatedtype Cell: CKRCell
    
    var id: String { get }
    var priority: CKRSectionPriority { get }
    var itemStore: [Cell.Item.ID: Cell.Item] { get }
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection
}

// MARK: - Hashable

extension CKRSection {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - Comparable

extension CKRSection {
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.priority.rawValue > rhs.priority.rawValue
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
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
