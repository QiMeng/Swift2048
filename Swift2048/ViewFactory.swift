//
//  ViewFactory.swift
//  Swift2048
//
//  Created by Lin on 15/5/1.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import UIKit

class ViewFactory {
   
    class func getDefaultFrame() -> CGRect {
        let defaultFrame = CGRectMake(0, 0, 100, 30)
        return defaultFrame
    }
    
    class func createControl(type:String, title:[String], action:Selector, sender:AnyObject) ->UIView {
        
        switch(type)
        {
            case "label":
                return ViewFactory.createLabel(title[0])
            case "button":
                return ViewFactory.createButton(title[0], action: action, sender: sender as! UIViewController)
            case "segment":
                return ViewFactory.createSegment(title, action: action, sender: sender as! UIViewController)
            case "text":
                return ViewFactory.createTextField(title[0], action: action, sender: sender as! UITextFieldDelegate)
            
            default:
                return ViewFactory.createLabel(title[0])
        }
    }
    
    class func createButton(title:String , action:Selector , sender:UIViewController) -> UIButton
    {
        var button = UIButton(frame: ViewFactory.getDefaultFrame())
        
        button.backgroundColor = UIColor.orangeColor()
        button.setTitle(title, forState:.Normal)
        button.titleLabel!.textColor = UIColor.whiteColor()
        button.titleLabel!.font = UIFont.systemFontOfSize(14)
        
        button.addTarget(sender, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        
        return button
    }
    
    class func createTextField(value:String , action:Selector , sender:UITextFieldDelegate) ->UITextField {
        var textField = UITextField(frame: ViewFactory.getDefaultFrame())
        
        textField.backgroundColor = UIColor.clearColor()
        textField.textColor = UIColor.blackColor()
        textField.text = value
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.adjustsFontSizeToFitWidth = true
        textField.delegate = sender
        
        return textField
    }
    
    class func createSegment(item:[String] , action:Selector , sender:UIViewController) ->UISegmentedControl {
        var segment = UISegmentedControl(items: item)
        
        segment.frame = ViewFactory.getDefaultFrame()
        segment.momentary = false
        segment.addTarget(sender, action: action, forControlEvents: UIControlEvents.ValueChanged)
        
        return segment
    }
    
    class func createLabel(title:String) -> UILabel {
        let label = UILabel(frame: ViewFactory.getDefaultFrame())
        
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.whiteColor()
        label.text = title
        label.font = UIFont.systemFontOfSize(16)
        
        return label
    }
    
}
