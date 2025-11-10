//
//  TrendingCategoriesView.swift
//  unizo_FirstTry
//
//  Created by Somesh on 09/11/25.
//

import UIKit

class TrendingCategoriesView: UIView {
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var hostelButton: UIButton!
    @IBOutlet weak var furnitureButton: UIButton!
    @IBOutlet weak var fashionButton: UIButton!
    @IBOutlet weak var sportsButton: UIButton!
    @IBOutlet weak var gadgetsButton: UIButton!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        configureButtons()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        titleLabel.text = "Trending Categories"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
    }
    
    // MARK: - Configure Buttons
    private func configureButtons() {
        let buttons = [hostelButton, furnitureButton, fashionButton, sportsButton, gadgetsButton]
        let symbols = ["basket.fill", "bed.double.fill", "tshirt.fill", "sportscourt.fill", "headphones"]
        let brandColor = UIColor(red: 0/255, green: 124/255, blue: 145/255, alpha: 1)
        
        for (index, button) in buttons.enumerated() {
            guard let button = button else { continue }
            
            // Set system image
            let config = UIImage.SymbolConfiguration(pointSize: 22, weight: .semibold)
            button.setImage(UIImage(systemName: symbols[index], withConfiguration: config), for: .normal)
            button.tintColor = .white
            
            // Style
            button.backgroundColor = brandColor
            button.layer.cornerRadius = button.frame.height / 2
            button.clipsToBounds = true
            
            // Add shadow
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.15
            button.layer.shadowOffset = CGSize(width: 0, height: 2)
            button.layer.shadowRadius = 3
            button.layer.masksToBounds = false
            
            // Add tap target
            button.addTarget(self, action: #selector(categoryTapped(_:)), for: .touchUpInside)
        }
    }
    
    // MARK: - Button Action
    @objc private func categoryTapped(_ sender: UIButton) {
        // Haptic feedback
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
        
        // Ripple glow effect
        let ripple = UIView(frame: sender.bounds)
        ripple.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        ripple.layer.cornerRadius = sender.layer.cornerRadius
        ripple.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        sender.addSubview(ripple)
        sender.bringSubviewToFront(ripple)
        
        UIView.animate(withDuration: 0.15, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            ripple.transform = .identity
            ripple.alpha = 0.0
        }) { _ in
            ripple.removeFromSuperview()
            UIView.animate(withDuration: 0.1) {
                sender.transform = .identity
            }
        }
        
        // Handle category logic
        switch sender {
        case hostelButton:
            print("Hostel Essentials tapped")
        case furnitureButton:
            print("Furniture tapped")
        case fashionButton:
            print("Fashion tapped")
        case sportsButton:
            print("Sports tapped")
        case gadgetsButton:
            print("Gadgets tapped")
        default:
            break
        }
    }
}

