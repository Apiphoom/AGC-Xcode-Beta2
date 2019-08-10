//  ViewController.swift
//  Api Project AGC
// Created by Apiphoom Chuenchompoo on 26/5/2562 BE.
// Copyright © 2562 Apiphoom Chuenchompoo. All rights reserved.
// Api Project @CopyRight
// Api Project Beta 1 Series 1 26/5/2019
// Api Project Beta 2 Series 1 2/6/2019
// Api Project Beta 3 Series 1 8/6/2019
// Api Project Beta 4 Series 1 14/6/2019
// Api Project Beta 5 Series 1 20/6/2019
// Api Project Full 1 Series 1 30/6/2019
// import ARkit
//import FireBase
//import Auth

import WebKit
import Foundation
import SystemConfiguration




class ViewController: UIViewController, WKUIDelegate {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    override func viewDidAppear(_ animated: Bool) {
        
        if CheckInternet.Connection(){
            
            
        }
            
        else{
            
            self.Alert(Message: "Please Coonect to your Internet")
        }
        
    }
    
    func Alert (Message: String){
        
        let alert = UIAlertController(title: "Internet Connection Lost", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        
        
        
    }
}

