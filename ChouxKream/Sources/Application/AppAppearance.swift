//
//  AppAppearance.swift
//  ChouxKream
//
//  Created by stat on 2023/02/15.
//

import UIKit

class AppAppearance: UIBarAppearance {
    
    static let barAppearance: UIBarAppearance = {
        let appearance = UIBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .systemBackground
        appearance.shadowColor = .clear
        return appearance
    }()
    
    static func configure() {
        let navigationBarAppearance = UINavigationBarAppearance(barAppearance: barAppearance)
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = navigationBarAppearance
        
        
    }
    
}
