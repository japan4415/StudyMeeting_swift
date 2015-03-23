//
//  thirdview.swift
//  20150323_first
//
//  Created by Yoshi Kato on 2015/03/23.
//  Copyright (c) 2015年 discord. All rights reserved.
//

import UIKit

class thirdview: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
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
        var cell = UITableViewCell(style:.Default, reuseIdentifier:"mycell");
        
        var fontname = fontName_array[indexPath.row];
        cell.accessoryType = .Checkmark;
        cell.textLabel?.text = "あいうえお abcde ABCDE 0123456789";
        cell.textLabel?.font = UIFont(name:fontname,size:18);
        
        cell.detailTextLabel?.textColor = UIColor.brownColor();
        cell.detailTextLabel?.text = fontname;
        
        //cell.accessoryType = .Checkmark;
        return cell;
    }
    
    /*
    override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    }
    
    /*override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }*/
    
    func tableView(tableView:UITableView,numberOfRowsInSecion section:Int) -> Int{
    return 10;
    }
    
    func tableView(tableView:UITableView,cellForRowAtIndexPath indexPath:NSIndexPath) ->UITableViewCell{
    var cell = UITableViewCell(style: .Default, reuseIdentifier:"mycell");
    cell.textLabel?.text = "\(indexPath.row)行目";
    return cell;
    
    }
    
    /*    func tableView(tableView:UITableView,didSelectRowAtIndexPath indexPath: NSIndexPath!){
    println("\(indexPath.row)行目を選択");
    }
    */
    
    override func prefersStatusBarHidden() -> Bool{
    return true;*/
}

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/


