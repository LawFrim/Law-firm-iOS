//
//  ViewController.swift
//  LawFirm
//
//  Created by 高睿 on 16/12/1.
//  Copyright © 2016年 Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        webView.goBack()
    }
    
    @IBAction func stop(_ sender: UIBarButtonItem) {
        webView.stopLoading()
    }
    
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequest(URLRequest(url: URL(string: "https://law-firm.herokuapp.com")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

