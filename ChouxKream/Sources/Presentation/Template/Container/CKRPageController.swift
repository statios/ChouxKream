//
//  CKRPageController.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit

class CKRPageController: CKRViewController {
    
    private var viewControllers = [UIViewController]()
    
    private var pageContainer: UIView!
    private var pageController = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .horizontal
    )
    
    convenience init(_ viewControllers: [UIViewController]) {
        self.init(nibName: nil, bundle: nil)
        
        self.viewControllers = viewControllers
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
        
        attachContent(viewController: pageController, container: pageContainer)
        
        pageController.dataSource = self
        
        if let viewController = viewControllers.first {
            pageController.setViewControllers([viewController], direction: .forward, animated: false)
        }
    }
    
}

extension CKRPageController: UIPageViewControllerDataSource {
    
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

extension CKRPageController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
    }
    
}
