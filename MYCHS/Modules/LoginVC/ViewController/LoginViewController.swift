//
//  LoginViewController.swift
//  MYCHS
//
//  Created by Swapnil Katkar on 15/10/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateRootViewController(viewController: "LoginViewController")
        // Do any additional setup after loading the view.
    }
}
extension LoginViewController
{
    @IBAction func EnquiryFormPressed(_ sender: UIButton)
    {
        let enquiryVC = loadViewControllerWithIdentifier("EnquiryFormVC", fromStoryBoard: .main) as! EnquiryFormVC
        self.present(enquiryVC, animated: true, completion: nil)
    }
    
    @IBAction func signUpPressed(_ sender: Any)
    {
        let homeVC = loadViewControllerWithIdentifier("HomeViewController", fromStoryBoard: .main) as! HomeViewController
        self.present(homeVC, animated: false)
    }
    @IBAction func ForgotPasswordPressed(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Recovery Password", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter UserID here"
        }
        let saveAction = UIAlertAction(title: "PROCEED", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            print("firstName \(String(describing: firstTextField.text))")
        })
        let cancelAction = UIAlertAction(title: "CANCEL", style: .destructive, handler: { (action : UIAlertAction!) -> Void in })
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
