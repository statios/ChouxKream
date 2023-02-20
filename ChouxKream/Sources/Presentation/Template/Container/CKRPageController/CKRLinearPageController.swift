//
//  CKRLinearPageLayout.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit

class CKRLinearPageController: CKRPageController {
    
    private var content: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        content = UIStackView()
        content.axis = .horizontal
        content.translatesAutoresizingMaskIntoConstraints = false
        content.distribution = .fillEqually
        
        view.addSubview(content)
        
        NSLayoutConstraint.activate([
            content.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            content.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32),
            content.heightAnchor.constraint(equalToConstant: 2)
        ])
        
        viewControllers.forEach { _ in
            let bar = UIView()
            bar.backgroundColor = .systemBackground
            bar.alpha = 0.25
            content.addArrangedSubview(bar)
        }
        
        content.arrangedSubviews.first?.alpha = 1.0
    }
    
    override func pageViewController(_ pageViewController: UIPageViewController, didTransitionTo index: Int) {
        content.arrangedSubviews.enumerated().forEach { offset, subview in
            subview.alpha = offset == index ? 1.0 : 0.25
        }
    }
    
}
