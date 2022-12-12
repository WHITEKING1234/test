//
//  TableViewCell12.swift
//  test
//
//  Created by Mac on 12/12/22.
//

import UIKit

class TableViewCell12: UITableViewCell {
    
    
    
    
    @IBOutlet weak var lable1: UILabel!
    
    
    @IBOutlet weak var imange: UIImageView!
    
    var tap = false
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let tepp = UITapGestureRecognizer(target: self, action: #selector(tapped))
        imange.addGestureRecognizer(tepp)
    }
@objc func tapped () {
        if tap == false{
            imange.image = UIImage(systemName: "square")
            tap = true
        }else{
            imange.image = UIImage(systemName: "checkmark.square")
            tap = false
        }
        
    }
}



