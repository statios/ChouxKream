//
//  CKRGlenPageController.swift
//  ChouxKream
//
//  Created by stat on 2023/02/15.
//

import UIKit

class CKRGlenPageController: CKRPageController {
    
    private var pageBarHeight: CGFloat {
        return 38
    }
    
    private var content: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let divider = UIView()
        divider.backgroundColor = .opaqueSeparator.withAlphaComponent(0.5)
        divider.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(divider)
        
        NSLayoutConstraint.activate([
            divider.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            divider.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            divider.heightAnchor.constraint(equalToConstant: 0.5)
        ])
        
        content = UIStackView()
        content.translatesAutoresizingMaskIntoConstraints = false
        content.axis = .horizontal
        content.spacing = 8
        
        view.addSubview(content)
        
        NSLayoutConstraint.activate([
            content.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            content.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            content.heightAnchor.constraint(equalToConstant: pageBarHeight),
            content.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ])
        
        additionalSafeAreaInsets.top = pageBarHeight
        
        viewControllers.enumerated().forEach { offset, viewController in
            content.addArrangedSubview(
                BarItem().setupUI(viewController.title)
            )
        }
        
        let spacer = UILabel()
        spacer.setContentHuggingPriority(.defaultLow, for: .horizontal)
        content.addArrangedSubview(spacer)
        
        activatePageItem(index: .zero)
    }
    
    private func activatePageItem(index: Int) {
        content.subviews.enumerated().forEach { offset, control in
            if control.isKind(of: UIControl.self), let control = control as? UIControl {
                control.isSelected = offset == index
            }
        }
    }
    
    override func pageViewController(_ pageViewController: UIPageViewController, didTransitionTo index: Int) {
        activatePageItem(index: index)
    }
    
    fileprivate class BarItem: UIControl {
        
        private var label: UILabel?
        private var selection: UIView?
        
        override var isSelected: Bool {
            didSet { updateUI() }
        }
        
        func setupUI(_ title: String?) -> Self {
            
            self.label = UILabel()
            self.label?.text = title
            self.label?.font = .systemFont(ofSize: 14, weight: .medium)
            self.label?.textColor = .label
            self.label?.setContentHuggingPriority(.required, for: .horizontal)
            
            self.selection = UIView()
            self.selection?.backgroundColor = .label
            self.selection?.translatesAutoresizingMaskIntoConstraints = false
            self.selection?.heightAnchor.constraint(equalToConstant: 2).isActive = true
            
            let content = UIStackView()
            content.axis = .vertical
            content.translatesAutoresizingMaskIntoConstraints = false
            content.addArrangedSubview(label!)
            content.addArrangedSubview(selection!)
            
            addSubview(content)
            
            NSLayoutConstraint.activate([
                content.leadingAnchor.constraint(equalTo: leadingAnchor),
                content.trailingAnchor.constraint(equalTo: trailingAnchor),
                content.topAnchor.constraint(equalTo: topAnchor),
                content.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
            
            return self
        }
        
        private func updateUI() {
            self.selection?.backgroundColor = isSelected ? .label : .clear
            self.label?.font = .systemFont(ofSize: 14, weight: isSelected ? .semibold : .medium)
        }
        
    }
    
}
