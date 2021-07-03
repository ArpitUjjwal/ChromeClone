//
//  ViewController.swift
//  ChromeClone
//
//  Created by Arpit Ujjwal on 04/07/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.google.co.in/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

