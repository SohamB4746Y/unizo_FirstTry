//
//  SignUpViewController.swift
//  unizo_FirstTry
//
//  Created by Somesh on 02/11/25.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var roundedSignUp: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundedSignUp.layer.cornerRadius = 24
        roundedSignUp.layer.masksToBounds = true
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
