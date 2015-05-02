//
//  ScoreView.swift
//  Swift2048
//
//  Created by Lin on 15/5/1.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

enum ScoreType {
    
    case Common //普通分面板
    case Best   //最高分面板
    
}

protocol ScoreViewProtocol {
    func changeScore(value s:Int)
}

class ScoreView: UIView, ScoreViewProtocol {

    var label:UILabel!
    
    let defaultFrame = CGRectMake(0, 0, 100, 30)
    var stype:String!
    var score:Int = 0 {
        didSet {
            label.text = "\(stype):\(score)"
        }
    }
    
    init(stype:ScoreType)
    {
        label = UILabel(frame: defaultFrame)
        label.textAlignment = NSTextAlignment.Center
        
        super.init(frame: defaultFrame)
        
        self.stype = (stype == ScoreType.Common ? "分数" : "最高分")
        
        backgroundColor = UIColor.orangeColor()
        label.font = UIFont(name: "宋体", size: 16)
        label.textColor = UIColor.whiteColor()
        self.addSubview(label)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func changeScore(value s: Int) {
        score = s
    }

}
