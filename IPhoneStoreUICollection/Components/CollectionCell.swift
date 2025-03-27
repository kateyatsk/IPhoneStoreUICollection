//
//  CollectionCell.swift
//  IPhoneStoreUICollection
//
//  Created by Екатерина Яцкевич on 27.03.25.
//

import UIKit

final class CollectionCell: UICollectionViewCell {
    static let reuseIdentifier = "CollectionCell"
    var completion: (()->Void)?
    
    private lazy var productImage: UIImageView = {
        $0.frame.size = CGSize(width: 188, height: 200)
        $0.center.x = contentView.center.x
        $0.frame.origin.y = 0
        return $0
    }(UIImageView())
    
    
    private lazy var priceLabel: UILabel = {
        $0.font = .systemFont(ofSize: 15, weight: .bold)
        $0.textColor = .rosePrice
        $0.frame.origin.x = contentView.frame.minX + 15
        $0.frame.origin.y =  contentView.frame.maxY - 90
        $0.frame.size.width = 90
        $0.frame.size.height = 18
        return $0
    }(UILabel())
    
    private lazy var productNameLabel: UILabel = {
        $0.font = .systemFont(ofSize: 15, weight: .regular)
        $0.textColor = .black
        $0.frame.origin.x = contentView.frame.minX + 15
        $0.frame.origin.y =  contentView.frame.maxY - 70
        $0.frame.size.width = contentView.frame.width - 40
        $0.frame.size.height = 40
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var favoriteMark: UIImageView = {
        $0.image = .bookmark
        $0.tintColor = .black
        $0.frame.size = CGSize(width: 15, height: 15)
        $0.frame.origin.x = contentView.frame.maxX - 27
        $0.frame.origin.y =  contentView.frame.maxY - 90
        return $0
    }(UIImageView())
    
    private lazy var buyButton: UIButton = {
        $0.setTitle("Купить", for: . normal)
        $0.setTitleColor(.white, for: .normal)
        $0.frame = CGRect(x: 6, y: (contentView.frame.maxY - 24), width: contentView.frame.width - 12, height: 22)
        $0.backgroundColor = .greenButton
        $0.titleLabel?.font = .systemFont(ofSize: 9, weight: .regular)
        $0.layer.cornerRadius = 11
        return $0
    }(UIButton(primaryAction: UIAction(handler: { _ in
        self.completion?()
    })))
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews(productImage, favoriteMark, priceLabel, productNameLabel, buyButton)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(item: ProductCard) {
        productImage.image = UIImage(named: item.imageName)
        priceLabel.text = item.price
        productNameLabel.text = item.model
    }
    
}
