//
//  HomeViewController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit

class HomeViewController: CKRViewController {
    
    override var title: String? {
        get { "HOME" }
        set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .random
    }
    
}

extension UIColor {
    class var random: UIColor {
        UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
    }
}
