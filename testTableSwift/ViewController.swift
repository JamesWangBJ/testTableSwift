//
//  ViewController.swift
//  testTableSwift
//
//  Created by 王佳敏 on 16/5/13.
//  Copyright © 2016年 Jm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    var dataTable:UITableView!
    var itemSteing:NSMutableArray = ["百度","腾讯","京东","网易","搜狐"]
    var sereenObject = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor .redColor()
        dataTable = UITableView()
        dataTable.delegate = self
        dataTable.dataSource = self
        dataTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "JMTableViewCell")
        dataTable.frame = sereenObject
        view .addSubview(dataTable)
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
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        cell.textLabel?.text = "我是可爱的\(self.itemSteing.objectAtIndex(indexPath.row))"
        return cell
        
        }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        print(indexPath)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120.0
    }
   

}

