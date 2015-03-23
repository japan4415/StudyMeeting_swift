//
//  ViewController.swift
//  20150323_tableviewcell
//
//  Created by Yoshi Kato on 2015/03/23.
//  Copyright (c) 2015年 Yoshi Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableview:UITableView,numberOfRowsInSection section:Int) -> Int{
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell{
        var cell = UITableViewCell(style:.Default, reuseIdentifier:"mycell");
        cell.accessoryType = .Checkmark;
        cell.textLabel?.text = "\(indexPath.row)行目";
        cell.textLabel?.textColor = UIColor.brownColor();
        cell.textLabel?.font = UIFont.systemFontOfSize(20);
        //cell.accessoryType = .Checkmark;
        return cell;
    }

    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
}



