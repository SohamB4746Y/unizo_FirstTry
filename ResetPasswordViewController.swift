//
//  ResetPasswordViewController.swift
//  unizo_FirstTry
//
//  Created by Somesh on 02/11/25.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var phoneNumberField: UIView!
    @IBOutlet weak var collegeEmailField: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        phoneNumberField.layer.cornerRadius = 24
        collegeEmailField.layer.cornerRadius = 24
        phoneNumberField.layer.masksToBounds = true
        collegeEmailField.layer.masksToBounds = true
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
