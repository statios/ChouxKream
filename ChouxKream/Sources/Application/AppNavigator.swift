//
//  AppNavigator.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

struct AppNavigator {
    
    static func launch(from window: UIWindow?) {
        
        window?.rootViewController =
        CKRTabBarController([
            CKRNavigationController(
                CKRGlenPageController([
                    HomeViewController.default().title("추천"),
                    HomeViewController.default().title("남성"),
                    HomeViewController.default().title("여성"),
                    HomeViewController.default().title("브랜드")
                ])
            ).title("HOME"),
        ])
        
        window?.makeKeyAndVisible()
    }
    
}

fileprivate extension UIViewController {
    func title(_ text: String) -> Self {
        self.title = text
        return self
    }
}
