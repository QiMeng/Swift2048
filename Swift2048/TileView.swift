//
//  TileView.swift
//  Swift2048
//
//  Created by Lin on 15/5/2.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class TileView: UIView {

    let colorMap = [
        2:UIColor.redColor(),
        4:UIColor.orangeColor(),
        8:UIColor.yellowColor(),
        16:UIColor.greenColor(),
        32:UIColor.brownColor(),
        64:UIColor.blueColor(),
        128:UIColor.purpleColor(),
        256:UIColor.cyanColor(),
        512:UIColor.lightGrayColor(),
        1024:UIColor.magentaColor(),
        2048:UIColor.blackColor()
    ]
    
    var value:Int = 0 {
        didSet {
            backgroundColor = colorMap[value]
            numberLabel.text = "\(value)"
        }
    }
    var numberLabel:UILabel!
    
    init(pos:CGPoint , width:CGFloat, value:Int)
    {
        numberLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: width))
        numberLabel.textColor = UIColor.whiteColor()
        numberLabel.textAlignment = NSTextAlignment.Center
        numberLabel.minimumScaleFactor = 0.5
        numberLabel.text = "\(value)"
        super.init(frame: CGRect(x: pos.x, y: pos.y, width: width, height: width))
        addSubview(numberLabel)
        self.value = value
        backgroundColor = colorMap[value]
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    

    
    
}
