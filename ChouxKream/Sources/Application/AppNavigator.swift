//
//  AppNavigator.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

struct AppNavigator {
    
    static func launch(from window: UIWindow?) {
        
        let main = CKRTabBarController()
        
        main.setViewControllers([
            CKRNavigationController(
                HomeViewController.default()
            ),
        ],animated: false)
        
        window?.rootViewController = main
        window?.makeKeyAndVisible()
    }
    
}
