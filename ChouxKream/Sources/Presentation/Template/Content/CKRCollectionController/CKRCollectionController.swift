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
    
    open var rxSection = PublishRelay<CKRSection>()
    
    private var sectionStore: [CKRSection] = []
    
    private var layoutConfiguration = UICollectionViewCompositionalLayoutConfiguration()
    
    private var collectionViewDataSource: UICollectionViewDiffableDataSource<CKRSection, AnyHashable>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = UICollectionViewCompositionalLayout(sectionProvider: { [unowned self] index, environment in
            return self.sectionStore[index].layout
        }, configuration: layoutConfiguration)
        
        collectionViewDataSource = .init(collectionView: collectionView) { [unowned self] collectionView, indexPath, itemIdentifier in
            let reuseIdentifier = self.sectionStore[indexPath.section].cellType.reuseIdentifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
            if let cell = cell as? CKRCell { cell.configure(item: itemIdentifier) }
            return cell
        }
        
        rxSection
            .subscribe(onNext: { [weak self] section in
                guard let self else { return }
                self.sectionStore.append(section)
                self.sectionStore.sort()
                self.reloadDataSource(animated: true)
            })
            .disposed(by: disposeBag)
        
    }
    
    func reloadDataSource(animated: Bool, completion: (() -> Void)? = nil) {
        
        var snapshot = NSDiffableDataSourceSnapshot<CKRSection, AnyHashable>()
        snapshot.appendSections(sectionStore)
        
        sectionStore.forEach { section in
            snapshot.appendItems(section.itemStore, toSection: section)
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
