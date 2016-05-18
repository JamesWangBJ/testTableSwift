//
//  OneTableViewCell.swift
//  testTableSwift
//
//  Created by 王佳敏 on 16/5/16.
//  Copyright © 2016年 Jm. All rights reserved.
//

import UIKit

class OneTableViewCell: UITableViewCell {

    // Xib 初始化
    @IBOutlet var lible: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }

//    override func awakeFromNib()
//    {
//        super.awakeFromNib()
//        
//        //self.backgroundColor = UIColor.redColor()
//    }
//    // Class 初始化
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
//    {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        //self.backgroundColor = UIColor.blueColor()
//    }
//    
//    required init(coder aDecoder: NSCoder)
//    {
//        super.init(coder: aDecoder)!
//    }
}
