//
//  SignUpViewController.swift
//  unizo_FirstTry
//
//  Created by Somesh on 02/11/25.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var textFieldView: UIView!
    @IBOutlet weak var signUpPopUp: UIView!

    // Container elements inside popup card
    @IBOutlet weak var titleLabel: UILabel!            // "Reset Your Password"
    @IBOutlet weak var subtitleLabel: UILabel!         // help text

    @IBOutlet weak var emailContainer: UIView!         // rounded background for email
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var orLabel: UILabel!               // "OR"

    @IBOutlet weak var phoneContainer: UIView!         // rounded background for phone
    @IBOutlet weak var phoneTextField: UITextField!

    @IBOutlet weak var rememberLabel: UILabel!         // "Remember your password?"
    @IBOutlet weak var backToLoginButton: UIButton!    // "Back to Login."

    @IBOutlet weak var sendResetButton: UIButton!      // bottom CTA

    override func viewDidLoad() {
        super.viewDidLoad()

        // Card styling
        signUpPopUp.layer.cornerRadius = 24
        signUpPopUp.layer.masksToBounds = true

        // This outer textFieldView seems to be a container; keep rounded
        textFieldView.layer.cornerRadius = 16
        textFieldView.layer.masksToBounds = true

        configureLabels()
        configureTextFields()
        configureInputContainers()
        configureButtons()
    }

    // MARK: - UI Configuration
    private func configureLabels() {
        titleLabel.text = "Reset Your Password"
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.textColor = .label

        subtitleLabel.text = "Don't worry! Enter your email address and we'll send you a link to reset your password."
        subtitleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        subtitleLabel.textColor = .secondaryLabel
        subtitleLabel.numberOfLines = 0

        orLabel.text = "OR"
        orLabel.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        orLabel.textColor = .tertiaryLabel

        rememberLabel.text = "Remember your password?"
        rememberLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        rememberLabel.textColor = .tertiaryLabel
    }

    private func configureTextFields() {
        // Common placeholder style
        let placeholderColor = UIColor.secondaryLabel
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "College Email",
            attributes: [
                .foregroundColor: placeholderColor
            ]
        )
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no

        phoneTextField.attributedPlaceholder = NSAttributedString(
            string: "Your Phone Number",
            attributes: [
                .foregroundColor: placeholderColor
            ]
        )
        phoneTextField.keyboardType = .phonePad
    }

    private func configureInputContainers() {
        // Style rounded white pills like in the mock
        [emailContainer, phoneContainer].forEach { container in
            container?.backgroundColor = .systemBackground
            container?.layer.cornerRadius = 24
            container?.layer.masksToBounds = true

            // subtle border to stand out on card
            container?.layer.borderWidth = 1
            container?.layer.borderColor = UIColor.quaternaryLabel.cgColor
        }
    }

    private func configureButtons() {
        // Back to Login
        backToLoginButton.setTitle("Back to Login.", for: .normal)
        backToLoginButton.setTitleColor(UIColor.systemBlue, for: .normal)
        backToLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)

        // Send Reset CTA
        sendResetButton.setTitle("Send Reset Link", for: .normal)
        sendResetButton.setTitleColor(.white, for: .normal)
        sendResetButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        sendResetButton.backgroundColor = UIColor(named: "PrimaryDeepBlue") ?? UIColor.systemTeal
        sendResetButton.layer.cornerRadius = 24
        sendResetButton.layer.masksToBounds = true
    }

    // MARK: - Actions
    @IBAction func tapBackToLogin(_ sender: UIButton) {
        // Dismiss or pop depending on presentation
        if let nav = navigationController {
            nav.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }

    @IBAction func tapSendReset(_ sender: UIButton) {
        view.endEditing(true)
        let email = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let phone = phoneTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

        // Basic validation: require either email or phone
        if email.isEmpty && phone.isEmpty {
            presentAlert(title: "Missing Info", message: "Enter your college email or phone number to continue.")
            return
        }

        if !email.isEmpty && !isValidEmail(email) {
            presentAlert(title: "Invalid Email", message: "Please enter a valid email address.")
            return
        }

        // TODO: Hook up to your reset endpoint
        presentAlert(title: "Link Sent", message: "If the account exists, you'll receive reset instructions shortly.")
    }

    // MARK: - Helpers
    private func isValidEmail(_ text: String) -> Bool {
        // Simple regex for email validation
        let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return text.range(of: pattern, options: .regularExpression) != nil
    }

    private func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
