//
//  LoginPopupViewController.swift
//  unizo_FirstTry
//
//  Created by Soham Bhattacharya on 02/11/25.
//

import UIKit

class LoginPopupViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var registrationTextField: UITextField!
    @IBOutlet weak var collegeEmailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginAccUIViewOne: UIView!
    @IBOutlet weak var loginAccUIViewTwo: UIView!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var loginButtonPage2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginAccUIViewOne.layer.cornerRadius = 24
        loginAccUIViewOne.layer.masksToBounds = true   

        loginAccUIViewTwo.layer.cornerRadius = 24
        loginAccUIViewTwo.layer.masksToBounds = true
        
        // NEED TO CHANGE FROM AFTER THIS POINT

        // add tap gesture to detect background taps (but allow touches inside popup)
    
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let resetVC = storyboard.instantiateViewController(withIdentifier: "ResetPasswordVC") as! ResetPasswordViewController
        
        resetVC.modalPresentationStyle = .pageSheet
            if let sheet = resetVC.sheetPresentationController {
                sheet.detents = [.medium()]
                sheet.preferredCornerRadius = 28
                sheet.prefersGrabberVisible = true
            }
        present(resetVC, animated: true)
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//            super.viewWillAppear(animated)
//            // slide up the popup container from bottom
//            loginAccUIViewOne.transform = CGAffineTransform(translationX: 0, y: view.frame.height)
//            UIView.animate(withDuration: 0.38,
//                           delay: 0,
//                           usingSpringWithDamping: 0.9,
//                           initialSpringVelocity: 0.6,
//                           options: .curveEaseOut,
//                           animations: {
//                self.loginAccUIViewOne.transform = .identity
//            }, completion: nil)
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


