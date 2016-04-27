//
//  ViewController.swift
//  NewCalculator
//
//  Created by Lin LAN on 26/04/2016.
//  Copyright © 2016 Lin LAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var results: UITextField!
    
    var result1=Float()
    var currentno=Float()
    var currentop=String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    currentop="="
    results.text=("\(result1)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

  
    @IBAction func btnnoinput(sender: UIButton) {
    currentno = currentno * 10 + Float(sender.titleLabel!.text!)!
        results.text=("\(currentno)")
    }




    @IBAction func operationbtn(sender: UIButton) {
    
        switch currentop {
        case "=":
            result1=currentno
        case "+":
            result1=result1+currentno
        case "-":
            result1=result1-currentno
        case "*":
            result1=result1*currentno
        case "/":
            result1=result1/currentno
            
        default:
            print("Error in operation")
        }
        currentno=0
        results.text=("\(result1)")
        if(sender.titleLabel!.text=="="){result1=0
    }
        currentop=sender.titleLabel!.text! as String!
    }
    



    @IBAction func clearbtn(sender: UIButton) {
    
    result1=0
    currentno=0
    currentop="="
    results.text=("\(result1)")
    }




}

