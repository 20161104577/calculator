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
    var number_one:String = ""
   
    @IBAction func number_1(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "1"
    }
    
    @IBAction func number_2(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "2"
    }
    
    @IBAction func number_3(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "3"
    }
    
    @IBAction func number_4(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "4"
    }
    
    @IBAction func number_5(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "5"
    }
    
    @IBAction func number_6(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "6"
    }
    
    @IBAction func number_7(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "7"
    }
    
    @IBAction func number_8(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "8"
    }
    
    @IBAction func number_9(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "9"
    }
    
    @IBAction func number_0(_ sender: Any) {
        if num.text == "0" {
            num.text = ""
        }
        num.text = num.text! + "0"
    }
    
    @IBAction func point(_ sender: Any) {
        num.text = num.text! + "."
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
        default:
            strtemp = "0"
        }
        
        while (strtemp.last == "0"){
            strtemp.removeLast()
        }
        if (strtemp.last == "."){
            strtemp.removeLast()
        }
        num.text = strtemp
        
        
    }
    
    @IBAction func divide(_ sender: Any) {
        control = 3
        number_one = num.text!
        num.text = "0"
    }
    
    @IBAction func add(_ sender: Any) {
        control = 2
        number_one = num.text!
        num.text = "0"
    }
    
    @IBAction func subtract(_ sender: Any) {
        control = 1
        number_one = num.text!
        num.text = "0"
    }
    
    @IBAction func ride(_ sender: Any) {
        control = 4
        number_one = num.text!
        num.text = "0"
    }
    
    @IBAction func AC(_ sender: Any) {
        num.text = "0"
    }
    
    
    @IBAction func return_value(_ sender: Any) {
        num.text?.removeLast()
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

