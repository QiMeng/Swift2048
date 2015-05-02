//
//  MainTabViewController.swift
//  Swift2048
//
//  Created by Lin on 15/4/30.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewMain = MainViewController()
        viewMain.title = "2048"
        
        var viewSetting = SettingViewController()
        viewSetting.title = "设置"
        
        var main = UINavigationController(rootViewController: viewMain)
        var setting = UINavigationController(rootViewController: viewSetting)
        
        self.viewControllers = [main , setting]
        
        self.selectedIndex = 0

        // Do any additional setup after loading the view.
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
