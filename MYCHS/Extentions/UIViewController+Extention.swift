//
//  UIViewController+Extention.swift
//  MYCHS
//
//  Created by Swapnil Katkar on 15/10/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation
import UIKit
enum storyboard : String
{
    case main = "Main"
}
extension UIViewController
{
    func isInternetActive()->Bool
    {
        if (Reachability()?.connection == .wifi || Reachability()?.connection == .cellular)
        {
            return true
        }
        else
        {
            return false
        }
    }
    func showLoaderWith(Msg:String?)
    {
        DispatchQueue.main.async {
            SVProgressHUD.setDefaultMaskType(.gradient)
            SVProgressHUD.show(withStatus: Msg ?? "Loading ...")
        
        }
    }
    func dismissLoader()
    {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
    func loadViewControllerWithIdentifier(_ identifier : String,fromStoryBoard storyboard: storyboard) -> UIViewController
    {
       return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    func updateRootViewController(viewController : String)
    {
        UserDefaults.standard.set("is\(viewController)", forKey: "root")
        UserDefaults.standard.synchronize()
    }
}
