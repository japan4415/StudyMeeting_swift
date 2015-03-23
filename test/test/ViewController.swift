//
//  ViewController.swift
//  test
//
//  Created by Yoshi Kato on 2015/03/20.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    // outlets
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var webview: UIWebView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //webview
        webview.delegate = self;
        var myurl = NSURL(string: "http://fanblogs.jp/shony/file/lol.png");
        var myurlreq = NSURLRequest(URL:myurl!);
        webview.loadRequest(myurlreq);
        
        //imageview from file
        imageview.image = UIImage(named:"hgren_06_097.jpg");
        
        //imageview from url
        var mydata = NSData(contentsOfURL: myurl!);
        var myimage = UIImage(data:mydata!);
        imageview.image = myimage
        
    }
    
    func webViewDidStartLoad(webView: UIWebView!) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true;
    }
    
    func webViewDidFinishLoad(webView: UIWebView!) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

