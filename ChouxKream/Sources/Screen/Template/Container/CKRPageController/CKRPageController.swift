//
//  CKRPageViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class CKRPageViewController: CKRViewController {
    
    fileprivate var viewControllers: [UIViewController]!
    fileprivate var pageBarLayout: CKRPageBarLayout?
    
    private var pageContainer: UIView!
    private var pageViewController: UIPageViewController!
    
    static func create(_ viewControllers: [UIViewController], barLayout: CKRPageBarLayout? = nil) -> CKRPageViewController {
        let viewController = CKRPageViewController()
        viewController.viewControllers = viewControllers
        viewController.pageBarLayout = barLayout
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageContainer = UIView()
        pageContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageContainer)
        
        NSLayoutConstraint.activate([
            pageContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            pageContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            pageContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            pageContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        if let pageBarLayout {
            pageBarLayout.pageBarLayout(environment: view)
            pageBarLayout.pageBarLayoutDataSource(viewControllers)
            additionalSafeAreaInsets = pageBarLayout.pageBarLayoutAdditionalSafeAreaInsets()
        }
        
        if let viewController = viewControllers.first {
            pageViewController = createPageViewController()
            pageViewController.setViewControllers([viewController], direction: .forward, animated: false)
            attachContent(viewController: pageViewController, container: pageContainer)
        }
    }
    
    private func createPageViewController() -> UIPageViewController {
        let viewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [:])
        viewController.dataSource = self
        viewController.delegate = self
        return viewController
    }
    
}

extension CKRPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = viewControllers.firstIndex(of: viewController) else { return nil }
        
        if viewControllers.count == index + 1 {
            return viewControllers.first
        }
        
        return viewControllers[index + 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = viewControllers.firstIndex(of: viewController) else { return nil }
        
        if .zero == index {
            return viewControllers.last
        }
        
        return viewControllers[index - 1]
    }
    
}

extension CKRPageViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        
        if completed,
            let viewController = pageViewController.viewControllers?.first,
            let index = viewControllers.firstIndex(of: viewController) {
            
            pageBarLayout?.pageBarLayoutDidFinishTransition(viewController, index: index)
        }
    }
    
}
