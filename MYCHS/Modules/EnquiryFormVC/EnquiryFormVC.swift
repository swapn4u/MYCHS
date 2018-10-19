//
//  EnquiryFormVC.swift
//  MYCHS
//
//  Created by Swapnil Katkar on 16/10/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class EnquiryFormVC: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var emailID: UITextField!
    @IBOutlet weak var societyAddress: UITextField!
    @IBOutlet weak var distinct: UITextField!
    @IBOutlet weak var mobileNo: UITextField!
    @IBOutlet weak var societyName: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var state: UITextField!
   
    @IBOutlet var outletValidation: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitActionPressed(_ sender: Any)
    {
        _ = outletValidation.compactMap{textField in
            if (textField.text?.isEmpty)!
            {
                print("Please Enter \(textField.placeholder!)")
                return
            }
        }
    }
}
extension EnquiryFormVC
{
    @IBAction func CancelFormPressed(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
