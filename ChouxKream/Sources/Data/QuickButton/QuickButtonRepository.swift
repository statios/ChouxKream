//
//  QuickButtonRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/02.
//

import Foundation
import RxSwift
import RxCocoa

struct QuickButton {
    
}

protocol QuickButtonDataSource {
    func fetchQuickButton() -> Single<[QuickButton]>
}

class QuickButtonRepository: CKRRepository<[QuickButton]> {
    
}
