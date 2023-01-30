//
//  CKPageBarPlainLayout.swift
//  ChouxKream
//
//  Created by stat on 2023/01/31.
//

import UIKit

class CKRPageBarPlainLayout: UIStackView, CKRPageBarLayout {
    
    private var barHeight: CGFloat {
        return 44
    }
    
    func pageBarLayout(environment: UIView) {
        setup()
        
        translatesAutoresizingMaskIntoConstraints = false
        
        environment.addSubview(self)
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: environment.safeAreaLayoutGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: environment.safeAreaLayoutGuide.trailingAnchor),
            bottomAnchor.constraint(equalTo: environment.safeAreaLayoutGuide.topAnchor),
            heightAnchor.constraint(equalToConstant: barHeight)
        ])
    }
    
    func pageBarLayoutAdditionalSafeAreaInsets() -> UIEdgeInsets {
        return UIEdgeInsets(top: barHeight, left: 0, bottom: 0, right: 0)
    }
    
    func pageBarLayoutDataSource(_ items: [CKRPageBarItem]) {
        addSpacer()
        items.forEach { item in
            addArrangedSubview(PlainPageBarItem().setup(item.title))
        }
        addSpacer()
    }
    
    func pageBarLayoutDidFinishTransition(_ item: CKRPageBarItem, index: Int) {
        arrangedSubviews.enumerated().forEach { offset, subview in
            if let control = subview as? UIControl {
                control.isSelected = offset == index + 1
            }
        }
    }
    
    private func setup() {
        backgroundColor = .systemBackground
        spacing = 16
    }
    
}

private class PlainPageBarItem: UIControl {
    
    override var isSelected: Bool {
        didSet { update() }
    }
    
    private var label: UILabel!
    private var selection: UIView!
    
    func setup(_ title: String?) -> Self {
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.required, for: .horizontal)
        label.text = title
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.topAnchor.constraint(equalTo: topAnchor)
        ])
        
        selection = UIView()
        selection.backgroundColor = .label
        selection.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(selection)
        
        NSLayoutConstraint.activate([
            selection.leadingAnchor.constraint(equalTo: leadingAnchor),
            selection.trailingAnchor.constraint(equalTo: trailingAnchor),
            selection.bottomAnchor.constraint(equalTo: bottomAnchor),
            selection.heightAnchor.constraint(equalToConstant: 2)
        ])
        
        update()
        
        return self
    }
    
    private func update() {
        selection.isHidden = !isSelected
        label.font = .systemFont(ofSize: 14, weight: isSelected ? .semibold : .regular)
    }
    
}

fileprivate extension UIStackView {
    func addSpacer() {
        let spacer = UIView(frame: .zero)
        spacer.setContentHuggingPriority(.defaultLow, for: .horizontal)
        spacer.backgroundColor = .red
        addArrangedSubview(spacer)
    }
}
