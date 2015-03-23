//
//  ViewController.swift
//  20150320_3rd
//
//  Created by Yoshi Kato on 2015/03/20.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnMenu(segue:UIStoryboardSegue){
        let newvc = segue.sourceViewController as truecocoaViewController;
        mycount = newvc.tmpcount;
        mycount++;
        println("前の画面から戻ってきたとき<\(mycount)>");
    }

    var mycount = 0;

    override func prepareForSegue(segue:UIStoryboardSegue,sender:AnyObject?){
        if(segue.identifier == "firstsegue"){
            mycount++;
            var newvc = segue.destinationViewController as truecocoaViewController;
            newvc.tmpcount = mycount;
        }
    }
    

}

