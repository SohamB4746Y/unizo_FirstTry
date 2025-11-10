//
//  File.swift
//  unizo_FirstTry
//
//  Created by Somesh on 09/11/25.
//

import UIKit

class HeaderView: UIView {

    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var profileButton: UIToolbar!
    
    // MARK: - Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(red: 0/255, green: 124/255, blue: 145/255, alpha: 1)
                
                // Optional: Customize the label and button
                titleLabel.textColor = .white
                profileButton.tintColor = .white
        setupUI()
    }

    private func setupUI() {
        // Optional: Customize appearance
        self.backgroundColor = .systemTeal
        titleLabel.text = "Home"
        titleLabel.textColor = .white
        profileButton.tintColor = .white
    }
}
