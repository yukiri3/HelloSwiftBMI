//
//  Model.swift
//  HelloSwiftBMI
//
//  Created by user on 2017/3/8.
//  Copyright © 2017年 HeartCoding. All rights reserved.
//

import UIKit

class Model: NSObject {
    //計算BMI 
    public func calculateBMI(height:Float,weight:Float)->Float{
        return (weight * 10000) / (height * height);
    }
    
    //計算BMI範圍
    public func calculateBMIRange(BMIValue:Float)->String{
        if BMIValue < 18.5 {
             return "重量不足"
        }
        else if BMIValue < 24{
             return "正常"
        }
        else if BMIValue < 27{
            return "過胖"
        }
        else {
            return "肥宅"
        }
    }
}
