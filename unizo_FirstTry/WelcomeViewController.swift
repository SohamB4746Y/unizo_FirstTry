//
//  WelcomeViewController.swift
//  unizo_FirstTry
//
//  Created by Soham Bhattacharya on 31/10/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var signUpWithEmail: UIButton!
    @IBOutlet weak var signUpWithApple: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signUpWithEmail.layer.cornerRadius = 15.0
        signUpWithEmail.layer.borderWidth = 2.0
        signUpWithEmail.layer.borderColor = UIColor.loginButtonBorder.cgColor
        
        signUpWithApple.layer.cornerRadius = 15.0
        signUpWithApple.layer.borderWidth = 2.0
        signUpWithApple.layer.borderColor = UIColor.loginButtonBorder.cgColor
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
