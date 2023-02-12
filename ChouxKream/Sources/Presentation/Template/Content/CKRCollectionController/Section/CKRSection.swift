//
//  CKRSection.swift
//  ChouxKream
//
//  Created by stat on 2023/02/01.
//

import UIKit

protocol CKRSection: Identifiable, Comparable where ID == String {
    
    associatedtype Cell: UICollectionViewCell
    associatedtype Item: Hashable
    
    var id: String { get }
    
    var priority: CKRSectionPriority { get set }
    
    var itemStore: [Item] { get }
    
    func layout(environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection
    
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

extension CKRSection {
    var cellReuseIdentifier: String {
        return Cell.reuseIdentifier
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
