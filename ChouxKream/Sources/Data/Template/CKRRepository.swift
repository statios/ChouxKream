//
//  Repository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/02.
//

import Foundation
import RxSwift
import RxCocoa

class CKRRepository<Entity> {
    
    var value: Entity? {
        return nil
    }
    
    func listen() -> Observable<Entity> {
        .empty()
    }
    
    func fetch() -> Single<Entity> {
        .never()
    }
    
}
