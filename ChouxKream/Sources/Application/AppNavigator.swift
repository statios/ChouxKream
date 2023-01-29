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
        main.setViewControllers(
            [
                CKRNavigationController(rootViewController: HomeViewController.default()),
                CKRNavigationController(rootViewController: StyleViewController.default()),
                CKRNavigationController(rootViewController: ShopViewController.default())
            ],
            animated: false
        )
        
        window?.rootViewController = main
        window?.makeKeyAndVisible()
    }
    
}
