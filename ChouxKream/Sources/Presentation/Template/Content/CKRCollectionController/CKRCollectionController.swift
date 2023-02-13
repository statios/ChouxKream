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
        
        prepareLayoutConfgiuration(layoutConfiguration)
        
        collectionView.register(CKRSectionHeader.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: CKRSectionHeader.reuseIdentifier)
        
        collectionView.collectionViewLayout = UICollectionViewCompositionalLayout(sectionProvider: { [unowned self] index, environment in
            
            let section = self.sectionStore[index]
            
            let sectionLayout = section.layout(environment: environment)
            
            if let _ = section.header {
                let size = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.0),
                    heightDimension: .estimated(56)
                )
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: size,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                sectionLayout.boundarySupplementaryItems = [header]
            }
            
            return sectionLayout
        }, configuration: layoutConfiguration)
        
        collectionViewDataSource = .init(collectionView: collectionView) { [unowned self] collectionView, indexPath, _ in
            let section = self.sectionStore[indexPath.section]
            let reuseIdentifier = section.cellReuseIdentifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CKRCell
            if let item = section.itemStore[indexPath.item] as? AnyHashable {
                cell?.configure(item: item, section: section, indexPath: indexPath)
            }
            return cell
        }
        
        collectionViewDataSource.supplementaryViewProvider = { [weak self] collectionView, elementKind, indexPath in
            
            guard let self else { return nil }
            
            if elementKind == UICollectionView.elementKindSectionHeader {
                
                let header = collectionView.dequeueReusableSupplementaryView(
                    ofKind: elementKind,
                    withReuseIdentifier: CKRSectionHeader.reuseIdentifier,
                    for: indexPath
                ) as? CKRSectionHeader
                
                if let headerItem = self.sectionStore[indexPath.section].header {
                    header?.decorate(headerItem)
                }
                
                return header
            }
            
            return nil
            
        }
        
        rxSection
            .subscribe(on: MainScheduler.instance)
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
            snapshot.appendItems(section.itemStore.map { AnyHashable($0) }, toSection: section.id)
        }
        
        collectionViewDataSource.apply(snapshot, animatingDifferences: animated) {
            completion?()
        }
    }
    
    func prepareLayoutConfgiuration(_ configuration: UICollectionViewCompositionalLayoutConfiguration) {
        configuration.interSectionSpacing = 32
    }
    
}

extension UICollectionReusableView {
    class var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
