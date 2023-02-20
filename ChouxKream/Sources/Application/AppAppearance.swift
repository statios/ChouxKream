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
        navigationBarAppearance.largeTitleTextAttributes = [.font: UIFont.rounded(ofSize: 32, weight: .bold)]
        
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = navigationBarAppearance
        
        let tabBarAppearance = UITabBarAppearance(barAppearance: barAppearance)
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().tintColor = .label
    }
    
}

fileprivate extension UIFont {
    class func rounded(ofSize size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: size, weight: weight)
        
        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
            return UIFont(descriptor: descriptor, size: size)
        }
        else {
            return systemFont
        }
    }
}
