//
//  WelcomeViewController.swift
//  unizo_FirstTry
//
//  Created by Soham Bhattacharya on 31/10/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var getStartedUiView: UIView!
    @IBOutlet weak var signUpWithEmail: UIButton!
    @IBOutlet weak var signUpWithApple: UIButton!
    @IBOutlet weak var loginButtonPageOne: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signUpWithEmail.layer.cornerRadius = 15.0
        signUpWithEmail.layer.borderWidth = 2.0
        signUpWithEmail.layer.borderColor = UIColor.loginButtonBorder.cgColor
        
        signUpWithApple.layer.cornerRadius = 15.0
        signUpWithApple.layer.borderWidth = 2.0
        signUpWithApple.layer.borderColor = UIColor.loginButtonBorder.cgColor
        
        getStartedUiView.layer.cornerRadius = 24.0
        getStartedUiView.layer.masksToBounds = true
    }
    // NEED TO CHANGE AFTER THIS POINT AND ALSO ADD CONSTRAINTS TO THE BUTTONS AND TEXT
    
    @IBAction func loginButtonTappedPageOne(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginPopupVC") as? LoginPopupViewController else { return }
        // Important: set presentation style before presenting
            loginVC.modalPresentationStyle = .pageSheet
        if let sheet = loginVC.sheetPresentationController {
                // Choose detents: .medium() shows a partial card height
                sheet.detents = [.medium()] // or [.custom(...)] or [.medium(), .large()]
                sheet.preferredCornerRadius = 28
                sheet.prefersGrabberVisible = true
                // Optional: prevent pulling to full-screen
                sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            }

            present(loginVC, animated: true, completion: nil)
        }
    
    @IBAction func signUpWithEmailTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpViewController
        
        navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    

    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


