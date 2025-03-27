//
//  ViewController.swift
//  IPhoneStoreUICollection
//
//  Created by Екатерина Яцкевич on 26.03.25.
//

import UIKit

final class ViewController: UIViewController {
    let productCards = ProductCard.getAllProductCards()
    
    lazy var layout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        $0.itemSize = CGSize(width: (view.frame.width - 40) / 2 , height: view.frame.height / 3)
        $0.minimumLineSpacing = 20
        $0.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        return $0
    }(UICollectionViewFlowLayout())
    
    lazy var collectionView: UICollectionView = {
        $0.dataSource = self
        $0.backgroundColor = .grayBackground
        $0.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.reuseIdentifier)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: layout))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        productCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.reuseIdentifier, for: indexPath) as? CollectionCell {
            cell.contentView.backgroundColor = .white
            cell.layer.cornerRadius = 5
            cell.clipsToBounds = true
            cell.configure(item: productCards[indexPath.item])
            cell.completion = {
                let vc = DetailViewController(phone: self.productCards[indexPath.item])
                self.navigationController?.pushViewController(vc, animated: true)
            }
            return cell
        }
            return UICollectionViewCell()
    }

}


extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach({addSubview($0)})
    }
}
