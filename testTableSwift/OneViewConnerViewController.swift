//
//  OneViewConnerViewController.swift
//  testTableSwift
//
//  Created by 王佳敏 on 16/5/16.
//  Copyright © 2016年 Jm. All rights reserved.
//

import UIKit

class OneViewConnerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dataTable:UITableView!
    var itemSteing:NSMutableArray = ["小明","小红","小王","小李","小刘"]
    var sereenObject = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor .redColor()

        
        dataTable = UITableView()
        dataTable.delegate = self
        dataTable.dataSource = self
        dataTable.frame = sereenObject
        // Class 注册
//        dataTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "OneTableViewCell")
        
        // Nib 注册
        dataTable.registerNib(UINib(nibName: "OneTableViewCell", bundle: nil), forCellReuseIdentifier: "videoItem")
        
        
        view.addSubview(dataTable)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.itemSteing.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        
        let cellIdentifier : String = "videoItem"
        let cell3 = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! OneTableViewCell
        cell3.lible.text = self.itemSteing.objectAtIndex(indexPath.row) as? String
        cell3.lible.backgroundColor = UIColor.yellowColor()
        return cell3
        
 
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        print(indexPath)
        
        let baiduViewCon = UIViewController.init()
        baiduViewCon.view.backgroundColor = UIColor.blueColor()
        navigationController?.pushViewController(baiduViewCon, animated:true)
 
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120.0
    }
    

}










