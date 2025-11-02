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
    
    private var backgroundTap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        loginAccUIViewOne.layer.cornerRadius = 24
        loginAccUIViewOne.layer.masksToBounds = true   

        loginAccUIViewTwo.layer.cornerRadius = 24
        loginAccUIViewTwo.layer.masksToBounds = true
        
        // NEED TO CHANGE FROM AFTER THIS POINT

        // add tap gesture to detect background taps (but allow touches inside popup)
        backgroundTap = UITapGestureRecognizer(target: self, action: #selector(backgroundTapped(_:)))
        backgroundTap.delegate = self
        backgroundTap.cancelsTouchesInView = false   // important: allow subviews to get the touch
        view.addGestureRecognizer(backgroundTap)
    
    }
    
    @objc func dismissPopup() {
        dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // slide up the popup container from bottom
            loginAccUIViewOne.transform = CGAffineTransform(translationX: 0, y: view.frame.height)
            UIView.animate(withDuration: 0.38,
                           delay: 0,
                           usingSpringWithDamping: 0.9,
                           initialSpringVelocity: 0.6,
                           options: .curveEaseOut,
                           animations: {
                self.loginAccUIViewOne.transform = .identity
            }, completion: nil)
        }
    @objc func backgroundTapped(_ sender: UITapGestureRecognizer) {
            let locationInView = sender.location(in: view)
            // if tap is outside the popup container, dismiss
            if !loginAccUIViewOne.frame.contains(locationInView) {
                dismiss(animated: true, completion: nil)
            }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
            // If the touch is inside the popup container, return false so the gesture recognizer doesn't receive it.
            let point = touch.location(in: view)
            if loginAccUIViewOne.frame.contains(point) {
                return false
            }
            return true
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

}
