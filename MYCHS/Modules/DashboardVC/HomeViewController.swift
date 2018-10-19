//
//  ViewController.swift
//  MYCHS
//
//  Created by Swapnil Katkar on 15/10/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
import WebKit
class HomeViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRootViewController(viewController: "HomeViewController")
         loadURL()
    }
    func loadURL()
    {
        if (isInternetActive())
        {
            let url = URL(string: "http://npointsociety.com")!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
            webView.navigationDelegate = self
            webView.scrollView.bounces = false
        }
        else
        {
            loadErrorViewOn(subview: self.view, forAlertType: .NoInternetConnection, errorMessage: NO_INTERNET_CONNECTIVITY)
            {
                self.loadURL()
            }
        }
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
extension HomeViewController : WKNavigationDelegate
{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finishLoad")
        self.dismissLoader()
        
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
    {
        self.dismissLoader()
        loadErrorViewOn(subview: self.view, forAlertType: .SomethingWentWrong, errorMessage: SERVICE_FAILURE_MESSAGE)
        {
            self.loadURL()
        }
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
    {
        self.showLoaderWith(Msg: "Please wait a moment ...")
        print("Start")
    }
}

