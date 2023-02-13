//
//  BannerViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import UIKit

extension BannerPageItem.BannerItem {
    var toBannerViewControllerItem: BannerViewController.Item {
        .init(
            imageUrl: self.imageUrl,
            deeplink: self.deeplink
        )
    }
}

final class BannerViewController: CKRViewController {
    
    struct Item {
        var imageUrl: String
        var deeplink: String
    }
    
    fileprivate var itemStore: Item!
    
    @IBOutlet weak var imageView: UIImageView!
    
    static func create(_ item: Item) -> Self {
        let viewController = Self.default()
        viewController.itemStore = item
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.kf.setImage(with: URL(string: itemStore.imageUrl))
    }
    
}
