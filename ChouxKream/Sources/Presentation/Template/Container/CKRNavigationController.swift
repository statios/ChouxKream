//
//  CKRNavigationController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class CKRNavigationController: UINavigationController {
    
    override var title: String? {
        get { viewControllers.first?.title }
        set { }
    }
    
    convenience init(_ rootViewController: UIViewController) {
        self.init(rootViewController: rootViewController)
    }
}
