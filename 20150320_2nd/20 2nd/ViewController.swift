//
//  ViewController.swift
//  20 2nd
//
//  Created by Yoshi Kato on 2015/03/20.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit
import Social;

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    
    @IBAction func textfieldaction(sender: UITextField) {
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        println("aho");
        


            
  
            
            
            
            var url = NSURL(string:"http://www.az.inf.uec.ac.jp/~zetaka/cgi-bin/dns/ip2geo.cgi?ip=130.153.9.10");
            var request = NSURLRequest(URL: url!);
            var jsondata = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error:nil);
            var jsonArray = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as NSDictionary;
            
            for dat in jsonArray{
                println("値=[\(dat)]");
            }
        
                  println("aho");
        
        
        
        var mydefault = NSUserDefaults.standardUserDefaults();
        var mystr = mydefault.stringForKey("mystring");
        if let tmpstr = mystr{
            textfield.text = tmpstr;

        }
    }
    
    @IBAction func tapReturnKey(sender:UITextField){
        var mydefault = NSUserDefaults.standardUserDefaults();
        mydefault.setObject(sender.text, forKey: "mystring")
        mydefault.synchronize();
    }
    
    @IBAction func testttt(sender: UITextField) {
    }
    
    @IBAction func forfacebook(sender: UIButton) {
        var facebookvc = SLComposeViewController(forServiceType: SLServiceTypeFacebook);
        facebookvc.setInitialText("swift iosアプリ開発 テスト");
        presentViewController(facebookvc, animated: true, completion: nil);
    }

    


}

