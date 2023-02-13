//
//  StylePicksFeedRepository.swift
//  ChouxKream
//
//  Created by stat on 2023/02/13.
//

import Foundation
import RxSwift

protocol StylePicksFeedDataSource {
    func fetchStylePicksFeed() -> Single<[Feed]>
}

class StylePicksFeedRepository: CKRRepository<[Feed]> {
    
    private var fixtureDataSource: StylePicksFeedDataSource = StylePicksFeedFixtureDataSource()
    
    override func fetch() -> Single<[Feed]> {
        return fixtureDataSource.fetchStylePicksFeed()
    }
    
    override func listen() -> Observable<[Feed]> {
        return fetch().asObservable()
    }
    
}

