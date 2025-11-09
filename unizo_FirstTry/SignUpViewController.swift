//
//  SignUpViewController.swift
//  unizo_FirstTry
//
//  Created by Somesh on 05/11/25.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var parentContainer: UIStackView!
    @IBOutlet weak var textFields: UIView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var collegeRegNo: UITextField!
    @IBOutlet weak var collegeEmail: UITextField!
    @IBOutlet weak var createPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var yourPhoneNumber: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textFields.layer.cornerRadius = 10
        textFields.layer.masksToBounds = true
        
        parentContainer.layer.cornerRadius = 10
        parentContainer.layer.masksToBounds = true
        // Do any additional setup after loading the view.
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
