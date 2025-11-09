//
//  ItemDetailsViewController.swift
//  unizo_FirstTry
//
//  Created by Nishtha on 09/11/25.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    var productImage: UIImage?
    var productCategory: String?
    var productName: String?
    var productPrice: String?
    var productRating: String?
    var productDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cart" // appears in existing nav bar

         // Style buttons
         addToCartButton.layer.cornerRadius = 12
         addToCartButton.layer.borderWidth = 1
         addToCartButton.layer.borderColor = UIColor.systemTeal.cgColor
         addToCartButton.backgroundColor = .systemBackground
         addToCartButton.setTitleColor(.systemTeal, for: .normal)

         buyNowButton.layer.cornerRadius = 12
         buyNowButton.backgroundColor = .systemTeal
         buyNowButton.setTitleColor(.white, for: .normal)

         // Fill data (if provided)
        productImageView.image = UIImage(named: "cap_image") ?? UIImage(named: "placeholder")

         categoryLabel.text = productCategory ?? "Category"
         titleLabel.text = productName ?? "Product Name"
         priceLabel.text = productPrice ?? "₹0"
         ratingLabel.text = productRating ?? "0.0"
         descriptionTextView.text = productDescription ?? "Description..."
         
         // Make description read-only & let scrollview handle scrolling
         descriptionTextView.isEditable = false
         descriptionTextView.isScrollEnabled = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToCartTapped(_ sender: UIButton) {
        print("Add to Cart tapped")
    }
    
    @IBAction func buyNowTapped(_ sender: UIButton) {
        print("Buy Now tapped")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
