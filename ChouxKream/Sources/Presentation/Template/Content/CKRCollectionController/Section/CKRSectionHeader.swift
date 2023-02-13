//
//  CKRSectionHeader.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit

struct CKRSectionHeaderItem {
    var title: String
    var subtitle: String?
    var deeplink: String?
}

class CKRSectionHeader: UICollectionReusableView {
    
    private var titleLabel: UILabel!
    private var subtitleLabel: UILabel!
    private var deeplinkLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        titleLabel.textColor = .label
        
        subtitleLabel = UILabel()
        subtitleLabel.font = .systemFont(ofSize: 13, weight: .regular)
        subtitleLabel.textColor = .secondaryLabel
        
        deeplinkLabel = UILabel()
        deeplinkLabel.font = .systemFont(ofSize: 13, weight: .regular)
        deeplinkLabel.textColor = .secondaryLabel
        deeplinkLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        let content = UIStackView()
        content.axis = .vertical
        content.spacing = 4
        content.addArrangedSubview(titleLabel)
        content.addArrangedSubview(subtitleLabel)
        content.backgroundColor = .blue
        
        let horizontal = UIStackView()
        horizontal.axis = .horizontal
        horizontal.spacing = 4
        horizontal.isLayoutMarginsRelativeArrangement = true
        horizontal.layoutMargins = .init(top: 0, left: 0, bottom: 12, right: 0)
        horizontal.translatesAutoresizingMaskIntoConstraints = false
        horizontal.alignment = .lastBaseline
        horizontal.addArrangedSubview(content)
        horizontal.addArrangedSubview(deeplinkLabel)
        horizontal.backgroundColor = .red
        
        addSubview(horizontal)
        
        NSLayoutConstraint.activate([
            horizontal.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontal.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontal.topAnchor.constraint(equalTo: topAnchor),
            horizontal.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func decorate(_ item: CKRSectionHeaderItem) {
        titleLabel.text = item.title
        subtitleLabel.isHidden = item.subtitle == nil
        subtitleLabel.text = item.subtitle
        deeplinkLabel.isHidden = item.deeplink == nil
        deeplinkLabel.text = "더보기"
    }
    
}
