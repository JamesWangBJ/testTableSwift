//
//  TweTableViewCell.swift
//  testTableSwift
//
//  Created by 王佳敏 on 16/5/18.
//  Copyright © 2016年 Jm. All rights reserved.
//

import UIKit

class TweTableViewCell: UITableViewCell {

    @IBOutlet var nameLib: UILabel!
    @IBOutlet var ageLib: UILabel!
    @IBOutlet var meImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
