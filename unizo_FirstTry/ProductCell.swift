//
//  ProductCell.swift
//  unizo_FirstTry
//
//  Created by Somesh on 10/11/25.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTag: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 0.5
        contentView.layer.borderColor = UIColor.systemGray4.cgColor
        contentView.backgroundColor = .white
        productImage.layer.cornerRadius = 8
        productImage.contentMode = .scaleAspectFill
        productImage.clipsToBounds = true
    }

    func configure(with name: String, price: String, rating: String, tag: String, imageName: String) {
        productName.text = name
        productPrice.text = price
        ratingLabel.text = "⭐️ \(rating)"
        productTag.text = tag
        productTag.textColor = tag == "Negotiable" ? .systemGreen : .systemBlue
        productImage.image = UIImage(named: imageName)
    }
}
