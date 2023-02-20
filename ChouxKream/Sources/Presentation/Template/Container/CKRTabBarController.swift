//
//  CKRTabBarController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class CKRTabBarController: UITabBarController {
    
    convenience init(_ viewControllers: [UIViewController]) {
        self.init()
        self.setViewControllers(viewControllers, animated: true)
    }
    
}
