//
//  GameModel.swift
//  Swift2048
//
//  Created by Lin on 15/5/1.
//  Copyright (c) 2015年 QiMENG. All rights reserved.
//

import Foundation

class GameModel {
    var dimension:Int = 0
    
    var tiles:Array<Int>
    
    init(dimension:Int)
    {
        self.dimension = dimension
        self.tiles = Array<Int>(count: self.dimension * self.dimension, repeatedValue: 0)
        
    }
    
    //找空
    func emptyPositons() -> [Int]
    {
        var emptytiles = Array<Int>()
        
        for i in 0..<(dimension * dimension)
        {
            if (tiles[i] == 0)
            {
                emptytiles.append(i)
            }
        }
        
        return emptytiles
    }
    
    //判断时候还有空位
    func isFull() -> Bool
    {
        if (emptyPositons().count == 0)
        {
            return true
        }
        return false
    }
    
    func setPostion(row:Int , col:Int, value:Int) -> Bool
    {
        var index = self.dimension * row + col
        var val = tiles[index]
        if (val > 0)
        {
            return false
        }
        tiles[index] = value
        
        return true
    }
    
    
    
}