//
//  PrivacyPolicyViewController.swift
//  unizo_FirstTry
//
//  Created by Nishtha on 05/11/25.
//

import UIKit

class PrivacyPolicyViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
                title = "Privacy Policy"

                textView.isEditable = false
                textView.isSelectable = true
                textView.isScrollEnabled = true
                textView.textAlignment = .natural // left-to-right
                textView.adjustsFontForContentSizeCategory = true

                // 1) Load the raw text (you can also paste it inline or load "privacy.txt" from bundle)
                let rawText: String
                if let path = Bundle.main.path(forResource: "privacy", ofType: "txt"),
                   let contents = try? String(contentsOfFile: path, encoding: .utf8) {
                    rawText = contents
                } else {
                    // fallback: short example - replace with your full privacy text
                    rawText = """
                    1. Introduction and Scope
                    This Privacy Policy describes how Student Marketplace App collects, uses, discloses, and protects
                    your personal information. Our priority is to ensure a transparent and secure experience for every
                    student. This Policy applies to all users who access or use the App and covers information
                    submitted during registration, while browsing, communicating, making transactions, and post-
                    transaction activities within the App.
                    2. Types of Information Collected
                    A. Personal Identification Data
                    • Full name, campus email address, profile photo, institution affiliation (college/university,
                    year of study, program).
                    • Mobile number, when provided for communication or verification.
                    • Unique student identifiers or roll numbers to validate campus access.
                    B. Account and Usage Data
                    • Username, encrypted login credentials, session details.
                    • Date of registration, account activity, and usage logs.
                    C. Listing and Transactional Data
                    • Item listings: descriptions, photos, pricing, and status updates (available/sold/given away).
                    • Search queries, browsing history, applied filters, and favorites.
                    • Messages and chat records between users.
                    D. Device and Technical Data
                    • Device type, model, operating system, app version.
                    • IP address, device identifiers, crash logs, and performance diagnostics.
                    • Location data (campus-based GPS, when enabled for safe meetup recommendations).
                    E. Cookies and Analytics
                    • Usage of cookies/local storage to maintain user sessions, remember preferences, manage
                    login states, and gather analytics for improving services.
                    • Information collected via third-party analytics tools (de-identified for analysis).
                    3. Methods of Data Collection
                    • Data provided directly by you during registration, profile updates, listing items, messaging,
                    or interacting with notifications and support.
                    • Data generated automatically as you use the App, including device, technical, and
                    behavioral data.
                    • Data received from affiliated campus databases for user verification (subject to explicit
                    consent).
                    • Cookies and similar technologies used for seamless login, analytics, and personalized
                    recommendations.
                    4. Use of Data
                    A. Main Purposes
                    • To verify user identity and restrict access strictly to genuine campus members.
                    • To allow users to create, manage, and browse listings, and facilitate transactions within
                    campus networks.
                    • To enable in-app chat, communication, and safe meetup recommendations.
                    • To personalize user experience, deliver AI-powered recommendations, and provide relevant
                    category-based updates.
                    • To analyze aggregated and anonymized trends for better platform performance and user
                    safety.
                    B. Safety, Security, and Compliance
                    • To monitor suspicious activity, enforce prohibited item policies, and prevent fraud or
                    misuse.
                    • For required legal, regulatory, or institutional obligations, including responding to official
                    requests from authorities.
                    • To support safety initiatives, including escalation to campus authorities when necessary
                    (e.g., in cases of harassment, threats, or dangerous goods).
                    C. Service Improvement
                    • To debug, improve, and optimize platform features and user interface.
                    • To solicit feedback, conduct surveys, and communicate improvements or policy changes.
                    5. Sharing and Disclosure of Data
                    A. With Other Users
                    • Limited profile information (first name, campus, verified badge, profile image) may be
                    displayed to other users in connection with listings and chat.• Detailed personal information, email address, phone number, or academic details are never
                    disclosed to non-authorized users.
                    B. With Third-Parties
                    • No personal information is ever sold, rented, or shared with external advertisers or
                    marketers.
                    • Data may be shared with campus administrators, IT staff, or institutional authorities for
                    verification or as required by regulations.
                    • Third-party service providers may process data strictly for hosting, analytics, or technical
                    support — subject to confidentiality and data security safeguards.
                    • Data will be disclosed to legal authorities only in accordance with applicable law,
                    regulation, or mandatory requests.
                    C. Aggregated and Anonymized Data
                    • Non-identifiable, aggregated statistics may be published for transparency and reporting (e.g.,
                    total items exchanged, sustainability impact) without revealing personal identities.
                    6. Data Retention and Deletion
                    • Personal and transactional data are retained for as long as your account is active or until
                    required for regulatory compliance, fraud prevention, or legal investigations.
                    • You may request deletion of your account and associated data at any time, subject to
                    required retention periods for lawful purposes.
                    • Deleted data is securely erased from active databases and backups following industry-
                    standard policies.
                    • If your account is terminated for misuse, data may be retained for institutional or security
                    review for a limited time.
                    7. Security Measures
                    A. Technical Protections
                    • Login/registration via institutional email or Apple ID, encrypted authentication, and data
                    transmission over secure protocols (SSL/TLS).
                    • Restricted internal access; only authorized admin team can view or manage personal data.
                    • Regular security audits, penetration tests, and prompt vulnerability patching.
                    B. User Responsibilities
                    • Users must keep login credentials secure and avoid sharing them.
                    • Immediate reporting of security incidents, lost devices, or unauthorized access is encouraged.
                    8. User Rights
                    A. Access and Correction
                    • Users have the right to access, update, or correct their profile, listings, or privacy settings
                    directly from the App.
                    • All requests for data correction will be fulfilled within a reasonable time frame.
                    B. Withdrawal of Consent and Erasure
                    • You may withdraw your consent for non-essential uses and opt out of promotional messages
                    or surveys.
                    • Account deletion requests can be submitted via App settings or customer support.
                    C. Data Portability
                    • On written request, a copy of your personal and transactional data can be provided in a
                    portable format, subject to identity verification.
                    9. Children’s Data and Underage Users
                    • The App is intended solely for users age 18 and above.
                    • Accounts of underage individuals found using the App will be deleted, and their data erased.
                    • The App does not knowingly collect data from children.
                    10. International Data Transfers
                    • Personal data may be processed in servers located within India; international transfer is
                    conducted only as permitted by law and with appropriate safeguards.
                    11. Changes to Privacy Policy
                    • We may update this Privacy Policy periodically to reflect changes in law, technology, or our
                    practices.
                    • All substantive amendments will be notified via email or in-app notifications. Continued
                    usage of the App after changes implies acceptance of the new Policy.
                    12. Grievance Officer & Contact Information
                    • For privacy concerns, questions, or requests, please contact:
                    ◦ Email: [Insert official privacy support email]
                    ◦ Grievance Officer: [Insert Name, Office Address, Contact Number]• We endeavor to resolve all privacy grievances promptly and fairly, in compliance with
                    applicable law.
                    13. Consent
                    • By using the Student Marketplace App, you consent to the collection, use, storage, sharing,
                    and processing of your information as described in this Privacy Policy.
                    • For specific features (location services, analytics, contact sharing) additional in-app consent
                    will be obtained before activation.
                    """
                }

                // 2) Base attributes for the whole body
                let bodyFont = UIFont.systemFont(ofSize: 15) // adjust to match screenshot
                let bodyColor = UIColor.label
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = 3
                paragraphStyle.paragraphSpacing = 8
                paragraphStyle.alignment = .natural
                paragraphStyle.headIndent = 0
                paragraphStyle.firstLineHeadIndent = 0

                let fullRange = NSRange(location: 0, length: (rawText as NSString).length)
                let attributed = NSMutableAttributedString(string: rawText,
                                                           attributes: [
                                                            .font: bodyFont,
                                                            .foregroundColor: bodyColor,
                                                            .paragraphStyle: paragraphStyle
                                                           ])

                // 3) Bold numbered headings like "5. Title" (pattern: start of line, digits, dot, space, then text)
                applyBoldToMatches(pattern: #"(?m)^[0-9]{1,2}\.\s.*$"#, in: rawText, to: attributed, baseFontSize: 15, boldSizeDelta: 1.0)

                // 4) Bold lettered subheadings like "A. Title" or "B. Title"
                applyBoldToMatches(pattern: #"(?m)^[A-Z]\.\s.*$"#, in: rawText, to: attributed, baseFontSize: 15, boldSizeDelta: 0.0)

                // 5) Optionally style bullets to indent and keep bullet character proper
                // We'll detect lines starting with "•" and set head indent
                if let regex = try? NSRegularExpression(pattern: #"(?m)^(•)\s"#, options: []) {
                    let nsText = rawText as NSString
                    regex.enumerateMatches(in: rawText, options: [], range: fullRange) { match, _, _ in
                        guard let match = match else { return }
                        let lineRange = nsText.lineRange(for: match.range)
                        let ps = NSMutableParagraphStyle()
                        ps.lineSpacing = 3
                        ps.paragraphSpacing = 6
                        ps.headIndent = 18
                        ps.firstLineHeadIndent = 0
                        attributed.addAttribute(.paragraphStyle, value: ps, range: lineRange)
                    }
                }

                // 6) Finally assign to the UITextView
                textView.attributedText = attributed
            }

            // Helper: find regex matches and apply bold to whole matched lines
            private func applyBoldToMatches(pattern: String, in text: String, to attributed: NSMutableAttributedString, baseFontSize: CGFloat, boldSizeDelta: CGFloat) {
                guard let regex = try? NSRegularExpression(pattern: pattern, options: []) else { return }
                let nsText = text as NSString
                let fullRange = NSRange(location: 0, length: nsText.length)
                let matches = regex.matches(in: text, options: [], range: fullRange)
                for match in matches {
                    let lineRange = nsText.lineRange(for: match.range)
                    let boldFont = UIFont.boldSystemFont(ofSize: baseFontSize + boldSizeDelta)
                    attributed.addAttribute(.font, value: boldFont, range: lineRange)
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
