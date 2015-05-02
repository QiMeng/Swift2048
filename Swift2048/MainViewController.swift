//
//  MainViewController.swift
//  Swift2048
//
//  Created by Lin on 15/4/30.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //方格维度
    var dimension:Int = 4
    //过关最大值
    var maxnumber:Int = 2048
    
    //格子宽度
    var width:CGFloat = 50
    //间距
    var padding:CGFloat = 6
    //背景图数据
    var backgrounds:Array<UIView>!
    
    var score:ScoreView!
    var bestscore:ScoreView!
    
    init() {
        self.backgrounds = Array<UIView>()
        super.init(nibName:nil,bundle:nil)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        setupGameMap()
        setupScoreLabels()
    }

    func setupGameMap()
    {
        var x:CGFloat = 50
        var y:CGFloat = 150
        
        for i in 0..<dimension
        {
            println( i )
            y = 150
            
            for j in 0..<dimension
            {
                var background = UIView(frame: CGRectMake(x, y, width, width))
                background.backgroundColor = UIColor.darkGrayColor()
                self.view.addSubview(background)
                backgrounds.append(background)
                
                y += padding + width
            }
            x += padding + width
        }
    }
    
    
    func setupScoreLabels() {
        
        score = ScoreView(stype: ScoreType.Common)
        score.frame.origin = CGPointMake(50, 80)
        score.changeScore(value: 0)
        self.view.addSubview(score)
        
        bestscore = ScoreView(stype: ScoreType.Best)
        bestscore.frame.origin = CGPointMake(170, 80)
        bestscore.changeScore(value: 0)
        self.view.addSubview(bestscore)
        
        
    }
    
    
    func genNumber()
    {
        let randv = Int(arc4random_uniform(10))
        var seed:Int = 2
        if (randv == 1)
        {
            seed = 4
        }
        
        let col = Int(arc4random_uniform(UInt32(dimension)))
        let row = Int(arc4random_uniform(UInt32(dimension)))
        
        insertTile((col,row), value: seed)
        
    }
    func insertTile(pos:(Int,Int), value:Int)
    {
        let (row, col) = pos
        let x = 50 + CGFloat(col) * (width + padding)
        let y = 150 + CGFloat(row) * (width + padding)
        let tile = TileView(pos: CGPointMake(x, y), width: width, value: value)
        self.view.addSubview(tile)
        self.view.bringSubviewToFront(tile)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
