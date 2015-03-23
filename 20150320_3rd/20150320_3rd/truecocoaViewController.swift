//
//  truecocoaViewController.swift
//  20150320_3rd
//
//  Created by Yoshi Kato on 2015/03/20.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit

class truecocoaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    var tmpcount = 0;
    
    override func viewWillAppear(animated:Bool){
        println("次の画面が表示されたとき<\(tmpcount)>");
    }

}
