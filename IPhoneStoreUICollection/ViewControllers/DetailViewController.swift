//
//  DetailViewController.swift
//  IPhoneStoreUICollection
//
//  Created by Екатерина Яцкевич on 27.03.25.
//

import UIKit

final class DetailViewController: UIViewController {
    var phone: ProductCard
    
    private lazy var productImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds =  true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    private lazy var priceLabel: UILabel = {
        $0.font = .systemFont(ofSize: 35, weight: .bold)
        $0.textColor = .rosePrice
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var productNameLabel: UILabel = {
        $0.font = .systemFont(ofSize: 20, weight: .regular)
        $0.textColor = .black
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var favoriteButton: UIButton = {
        $0.setTitle("В избранное", for: . normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .white
        $0.layer.borderColor = UIColor.systemGray4.cgColor
        $0.layer.borderWidth = 1
        $0.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
        $0.layer.cornerRadius = 12
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    private lazy var buyButton: UIButton = {
        $0.setTitle("Купить", for: . normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .greenButton
        $0.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
        $0.layer.cornerRadius = 12
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    private lazy var descriptionLabel: UILabel = {
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .gray
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    
    init(phone: ProductCard) {
        self.phone = phone
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .grayBackground
        view.addSubviews(productImage, priceLabel, productNameLabel, favoriteButton, buyButton, descriptionLabel)
        configure()
    }
    
    private func configure() {
        productImage.image = UIImage(named: phone.imageName)
        priceLabel.text = phone.price
        productNameLabel.text = phone.model
        descriptionLabel.text = phone.description
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                productImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 104),
                productImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                productImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                productImage.widthAnchor.constraint(equalToConstant: view.frame.width),
                productImage.heightAnchor.constraint(equalToConstant: 397),
                
                priceLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 22),
                priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                productNameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 8),
                productNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                productNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                favoriteButton.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 18),
                favoriteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
                favoriteButton.heightAnchor.constraint(equalToConstant: 42),
                favoriteButton.widthAnchor.constraint(equalToConstant: 180),
                
                buyButton.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 18),
                buyButton.leadingAnchor.constraint(equalTo: favoriteButton.trailingAnchor, constant: 20),
                buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
                buyButton.heightAnchor.constraint(equalToConstant: 42),
                
                descriptionLabel.topAnchor.constraint(equalTo: buyButton.bottomAnchor, constant: 11),
                descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                
            ]
        )
    }

}
