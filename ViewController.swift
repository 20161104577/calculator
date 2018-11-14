//
//  ViewController.swift
//  calculator
//
//  Created by 杨大侠 on 2018/9/21.
//  Copyright © 2018年 杨大侠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var num: UITextField!
    
    var control:Int = 0
    var control_minus:Int = 0
    var fun_count:Int = 0
    var number_one:String = ""
    var SubNum:Int = 0
    var point_judge:Bool = false
    //var NumberOfCalculate:Int = 0
    
    
    func PowerOfARoot(numOne:Double,numTwo:Double)->Double {
        var NumOne:Double = numOne
        var NumTwo:Double = numTwo
        
        while(true) {
            if(NumTwo == 1) {
                break;
            }
            NumOne = NumOne * numOne
            NumTwo = NumTwo - 1
        }
        let value:Double = NumOne
        return value
        
        
    }
    
    @IBAction func number_1(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "1"
    }
    
    @IBAction func number_2(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "2"
    }
    
    @IBAction func number_3(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "3"
    }
    
    @IBAction func number_4(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "4"
    }
    
    @IBAction  func number_5(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "5"
    }
    
    @IBAction func number_6(_ sender: Any) {
        if SubNum != 0 && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "6"
    }
    
    @IBAction func number_7(_ sender: Any) {
        if SubNum != 0  && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "7"
    }
    
    @IBAction func number_8(_ sender: Any) {
        if SubNum != 0  && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "8"
    }
    
    @IBAction func number_9(_ sender: Any) {
        if SubNum != 0  && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "9"
    }
    
    @IBAction func number_0(_ sender: Any) {
        
        if SubNum != 0  && fun_count == 0 {
            num.text = ""
        }
        if num.text == "0" {
            num.text = ""
        }
        fun_count += 1
        num.text = num.text! + "0"
        
    }
    
    @IBAction func point(_ sender: Any) {
        if point_judge == false {
            if fun_count == 0 {
                num.text = "0"
                fun_count += 1
            }
            if num.text == "" {
                num.text = "0"
            }
            point_judge = true
            num.text = num.text! + "."
        }
    }
    
    @IBAction func equal(_ sender: Any) {   //等于
        var strtemp:String = ""
        switch control {
        case 1 :
            strtemp = "\(Double(number_one)! - Double(num.text!)!)"
        case 2 :
            strtemp = "\(Double(number_one)! + Double(num.text!)!)"
        case 3:
            strtemp = "\(Double(number_one)! / Double(num.text!)!)"
        case 4:
            strtemp = "\(Double(number_one)! * Double(num.text!)!)"
        case 6:
            strtemp = "\(PowerOfARoot(numOne: Double(number_one)!, numTwo: Double(num.text!)!))"
        default:
            strtemp = "0"
        }
        
        let DouTemp:Double = Double(strtemp)!
        strtemp = String(format:"%.8f",Double(strtemp)!)
        while (strtemp.last == "0"){
            strtemp.removeLast()
        }
        if (strtemp.last == "."){
            strtemp.removeLast()
        }
        
        if DouTemp < 0 {
            control_minus = 1
        }
        if num.text == "0" && control == 3 {
            num.text = "错误"
        }
        else {
            num.text = strtemp
        }
        
        SubNum += 1
        fun_count = 0
        if control != 0 {
            number_one = ""
            control = 0
        }
            
        else {
            number_one = strtemp
        }
    }
    
    
    
    @IBAction func divide(_ sender: Any) {
        if control != 0 {
            equal(control)
            
        }
        control = 3
        number_one = num.text!
        num.text = "0"
        point_judge = false
    }
    
    @IBAction func add(_ sender: Any) {
        if control != 0 {
            equal(control)
            
        }
        control = 2
        number_one = num.text!
        num.text = "0"
        point_judge = false
    }
    
    @IBAction func subtract(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 1
        number_one = num.text!
        num.text = "0"
        point_judge = false
    }
    
    @IBAction func ride(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 4
        number_one = num.text!
        num.text = "0"
        point_judge = false
    }
    
    
    
    @IBAction func Power(_ sender: Any) {//乘方运算
        if control != 0 {
            equal(control)
        }
        control = 6
        number_one = num.text!
        num.text = "0"
        point_judge = false
    }
    
    @IBAction func AC(_ sender: Any) {
        num.text = "0"
        point_judge = false
    }
    
    
    @IBAction func return_value(_ sender: Any) {
        num.text?.removeLast()
        if(num.text == "")
        {
            num.text = "0"
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        if control_minus == 0 {
            num.text = "-" + num.text!
            control_minus = 1
        }
        else {
            num.text?.removeFirst()
            control_minus = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        num.text = "0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


