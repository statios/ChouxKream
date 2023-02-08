//
//  CKRCollectionController.swift
//  ChouxKream
//
//  Created by stat on 2023/01/30.
//

import UIKit
import RxSwift
import RxCocoa

class CKRCollectionController: CKRViewController {
    
    override class var storyboardName: String {
        return String(describing: CKRCollectionController.self)
    }
    
    override class var storyboardIdentifier: String {
        return storyboardName
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    open var rxSection = PublishRelay<any CKRSection>()
    
    private(set) var sectionStore: [any CKRSection] = []
    
    private var layoutConfiguration = UICollectionViewCompositionalLayoutConfiguration()
    
    private var collectionViewDataSource: UICollectionViewDiffableDataSource<String, AnyHashable>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = UICollectionViewCompositionalLayout(sectionProvider: { [unowned self] index, environment in
            return self.sectionStore[index].layout(environment: environment)
        }, configuration: layoutConfiguration)
        
        collectionViewDataSource = .init(collectionView: collectionView) { [unowned self] collectionView, indexPath, itemIdentifier in
            let section = self.sectionStore[indexPath.section]
            let reuseIdentifier = section.cellReuseIdentifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CKRCell<Any>
            cell?.configure(item: itemIdentifier)
            return nil
        }
        
        rxSection
            .subscribe(onNext: { [weak self] section in
                guard let self else { return }
                self.sectionStore.append(section)
                self.sectionStore.sort { pre, cur in
                    pre.priority.rawValue > cur.priority.rawValue
                }
                self.reloadDataSource(animated: true)
            })
            .disposed(by: disposeBag)
    }
    
    func reloadDataSource(animated: Bool, completion: (() -> Void)? = nil) {
        
        var snapshot = NSDiffableDataSourceSnapshot<String, AnyHashable>()
        
        snapshot.appendSections(sectionStore.map { $0.id })
        
        sectionStore.forEach { section in
//            snapshot.appendItems(section.itemStore.map { $0.key }, toSection: section.id)
        }
        
        collectionViewDataSource.apply(snapshot, animatingDifferences: animated) {
            completion?()
        }
    }
    
}

extension UICollectionReusableView {
    class var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
