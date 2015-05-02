//
//  ViewController.swift
//  Swift2048
//
//  Created by Lin on 15/4/30.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startGame(sender: UIButton) {
        
        let alertCtrl = UIAlertController(title: "开始!", message: "游戏就要开始,准备好了吗?", preferredStyle: UIAlertControllerStyle.Alert)
        alertCtrl.addAction(UIAlertAction(title: "Ready Go!", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
            
            self.presentViewController(MainTabViewController(), animated: true, completion: nil)
            
        }))
        self.presentViewController(alertCtrl, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

