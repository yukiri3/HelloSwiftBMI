//
//  ViewController.swift
//  HelloSwiftBMI
//
//  Created by user on 2017/3/8.
//  Copyright © 2017年 HeartCoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var heightTextField: UITextField!//輸入身高textField
    @IBOutlet var weightTextField: UITextField!//輸入體重textField
    @IBOutlet var bmiSum: UILabel!//顯示BMI結果 Label
    @IBOutlet var bmiRangeString: UILabel!//顯示BMI結果範圍 Label
    
    override func viewDidLoad() {
        super.viewDidLoad()
    heightTextField.keyboardType = UIKeyboardType.decimalPad
    weightTextField.keyboardType = UIKeyboardType.decimalPad
        heightTextField.delegate = self
        weightTextField.delegate = self
    }
    @IBAction func submit(_ sender: UIButton) {
     let heightFloat = (heightTextField.text! as NSString).floatValue
     let weightFloat = (weightTextField.text! as NSString).floatValue
     
        //將輸入的身高體重 利用寫好的model運算
     let sum = Model().calculateBMI(height: heightFloat,weight: weightFloat)
        //將結果顯示出來
        bmiSum.text = "BMI:"+String(format:"%.2f", sum)
        bmiRangeString.text = "BMI範圍："+Model().calculateBMIRange(BMIValue: sum)
        
    }
    
    //縮鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

