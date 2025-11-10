//
//  File.swift
//  unizo_FirstTry
//
//  Created by Somesh on 10/11/25.
//

import UIKit

class ProductCollectionView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    private let products: [(name: String, price: String, rating: String, tag: String, image: String)] = [
        ("Under Armour Cap", "₹500", "4.6", "Negotiable", "cap"),
        ("Slip Jeans", "₹349", "3.7", "Negotiable", "jeans"),
        ("Pink Bicycle", "₹1200", "4.9", "Fixed", "cycle"),
        ("Cricket Bat", "₹800", "4.2", "Negotiable", "bat")
    ]

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self

        // Register custom cell
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .clear
    }

    // MARK: - UICollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell else {
            return UICollectionViewCell()
        }

        let product = products[indexPath.row]
        cell.configure(with: product.name, price: product.price, rating: product.rating, tag: product.tag, imageName: product.image)
        return cell
    }

    // MARK: - UICollectionView DelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 24) / 2
        return CGSize(width: width, height: 220)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
