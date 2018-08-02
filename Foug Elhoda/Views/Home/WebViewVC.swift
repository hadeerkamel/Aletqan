//
//  WebViewVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
import WebKit

class WebViewVC: UIViewController ,WKNavigationDelegate	 {
    //MARK:- Outlets -

    @IBOutlet weak var webView: WKWebView!
    //MARK:- Properties -
    var nvaigationItemTitle : String!
    var urlString : String!
    //MARK:- Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        
    }
    //MARK:- Helpers -
    func initializaions(){
        
        webView.navigationDelegate = self
        
        if urlString != nil {
            
        let url = URL (string: urlString)!
        webView.load(URLRequest(url:url))
           
        }
    }
    func uiStyle(){
        if nvaigationItemTitle != nil {
            self.navigationItem.title = nvaigationItemTitle
        }
    }

}
