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

        let deepTeal = UIColor(hex: "#184B63")

        // Add to Cart (outlined)
        addToCartButton.layer.cornerRadius = 12
        addToCartButton.layer.borderWidth = 1.5
        addToCartButton.layer.borderColor = deepTeal.cgColor
        addToCartButton.backgroundColor = .white
        addToCartButton.setTitleColor(deepTeal, for: .normal)

        // Buy Now (filled)
        buyNowButton.layer.cornerRadius = 12
        buyNowButton.backgroundColor = deepTeal
        buyNowButton.setTitleColor(.white, for: .normal)

         // Fill data (if provided)
        productImageView.image = UIImage(named: "cap_image") ?? UIImage(named: "placeholder")

         categoryLabel.text = productCategory ?? "Fashion"
         titleLabel.text = productName ?? "Under Armour Cap"
         priceLabel.text = productPrice ?? "₹500"
         ratingLabel.text = productRating ?? "4.2"
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
extension UIColor {
    convenience init(hex: String) {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") { cString.removeFirst() }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
}
