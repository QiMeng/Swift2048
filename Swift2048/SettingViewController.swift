//
//  SettingViewController.swift
//  Swift2048
//
//  Created by Lin on 15/4/30.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UITextFieldDelegate {

    var textNum : UITextField!
    var segDimension : UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        textNum = ViewFactory.createTextField("", action: Selector("numChanged"), sender: self)
        textNum.frame = CGRect(x: 80, y: 100, width: 200, height: 30)
        textNum.returnKeyType = UIReturnKeyType.Done
        self.view.addSubview(textNum)
        
        
        let lablelNum = ViewFactory.createLabel("阈值:")
        lablelNum.frame = CGRect(x: 20, y: 100, width: 60, height: 30)
        self.view.addSubview(lablelNum)
        
        segDimension = ViewFactory.createSegment(["3*3","4*4","5*5"], action: "dimensionChanged:", sender: self)
        segDimension.frame = CGRect(x: 80, y: 200, width: 200, height: 30)
        self.view.addSubview(segDimension)
        
        segDimension.selectedSegmentIndex = 1
        
        let labelDm = ViewFactory.createLabel("维度:")
        labelDm.frame = CGRect(x: 20, y: 200, width: 60, height: 30)
        self.view.addSubview(labelDm)
        
    }
    
    func dimensionChanged(sender : AnyObject) {
        
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
