//
//  String+.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation

extension Int {
    func generateComma() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
