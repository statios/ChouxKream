//
//  AppNavigator.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

struct AppNavigator {
    
    static func launch(from window: UIWindow?) {
        
        let home = HomeViewController.default()
        
        let main = CKRTabBarController()
        main.setViewControllers([CKRNavigationController(rootViewController: home)], animated: false)
        
        window?.rootViewController = main
        window?.makeKeyAndVisible()
    }
    
}
