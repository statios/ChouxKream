//
//  CKRViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit
import RxSwift

class CKRViewController: UIViewController {
    
    lazy var disposeBag = DisposeBag()
    
    class var storyboardName: String {
        return String(describing: Self.self)
    }
    
    class var storyboardIdentifier: String {
        return storyboardName
    }
    
    open class func `default`(storyboardName: String) -> Self {
        return UIStoryboard(name: storyboardName, bundle: .main).instantiateViewController(identifier: storyboardIdentifier) { coder in
            Self(coder: coder)
        }
    }
    
    open class func `default`() -> Self {
        let viewController = Self.default(storyboardName: storyboardName)
        viewController.controllerDidLoad()
        return viewController
    }
    
    func controllerDidLoad() {
        
    }
    
    func attachContent(viewController: UIViewController, container: UIView) {
        
        guard !children.contains(viewController) else { return }
        
        addChild(viewController)
        viewController.willMove(toParent: self)
        defer { viewController.didMove(toParent: self) }
        
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        container.addSubview(viewController.view)
        
        NSLayoutConstraint.activate([
            viewController.view.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            viewController.view.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            viewController.view.topAnchor.constraint(equalTo: container.topAnchor),
            viewController.view.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
    }
    
    func detachContent(viewController: UIViewController) {
        
        guard children.contains(viewController) else { return }
        
        viewController.willMove(toParent: nil)
        
        viewController.view.removeFromSuperview()
        
        viewController.didMove(toParent: nil)
        viewController.removeFromParent()
    }
    
}
