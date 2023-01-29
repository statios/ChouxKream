//
//  CKRViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class CKRViewController: UIViewController {
    
    class var storyboardName: String {
        return String(describing: Self.self)
    }
    
    class var storyboardIdentifier: String {
        return storyboardName
    }
    
    /**
     A Default initializer for creating the UIViewController using the storyboard which is set with the parameter
     - parameters:
       - storyboardName: A  name of the storobyard which contains this UIViewController.
     */
    open class func `default`(storyboardName: String) -> Self {
        return UIStoryboard(name: storyboardName, bundle: .main).instantiateViewController(identifier: storyboardIdentifier) { coder in
            Self(coder: coder)
        }
    }
    
    /**
     A Default initializer for creating the UIViewController using the storyboard.
     */
    open class func `default`() -> Self {
        let viewController = Self.default(storyboardName: storyboardName)
        viewController.controllerDidLoad()
        return viewController
    }
    
    /**
     The first method to be called after initialization. In general, the view is not loaded at this time, so be careful with access.
     */
    func controllerDidLoad() {
        
    }
    
    var needRefresh: Bool {
        return true
    }
    
    /// Call in viewDidLoad() and didTapRetryButton() if needRefresh is true.
    func loadRefresh() {
        
    }
    
    private func loadRefreshIfNeeded() {
        if needRefresh {
            loadRefresh()
        }
    }
    
}
