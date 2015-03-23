//
//  thirdview.swift
//  20150323_first
//
//  Created by Yoshi Kato on 2015/03/23.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var fontName_array:[String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for fontFamilyName in UIFont.familyNames(){
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName as String){
                fontName_array.append(fontName as String);
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableview:UITableView,numberOfRowsInSection section:Int) -> Int{
        //return 10;
        return fontName_array.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell{
        
        var cell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell;
        var fontname = fontName_array[indexPath.row];
        
        var label1 = cell.viewWithTag(1) as UILabel;
        label1.text = "あいうえお";
        label1.font = UIFont(name:fontname,size:16);
        
        var label2 = cell.viewWithTag(2) as UILabel;
        label2.text = fontname;
        label2.font = UIFont(name:fontname,size:16);
        
        /*var cell = UITableViewCell(style:.Default, reuseIdentifier:"mycell");
        
        var fontname = fontName_array[indexPath.row];
        cell.accessoryType = .Checkmark;
        cell.textLabel?.text = "あいうえお abcde ABCDE 0123456789";
        cell.textLabel?.font = UIFont(name:fontname,size:18);
        
        cell.detailTextLabel?.textColor = UIColor.brownColor();
        cell.detailTextLabel?.text = fontname;
        
        //cell.accessoryType = .Checkmark;*/
        
        return cell;
    }
    
    func tableView(tableView:UITableView,heightForRowAtIndexPath indexPath:NSIndexPath) -> CGFloat{
        return 44.0;
    }

}