//
//  SecondVC.swift
//  CaculatorApp
//
//  Created by TuanLA on 6/24/19.
//  Copyright © 2019 TuanLA. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var currentNumber = "0"
    var firstOpperand = ""
    var secondOpperand = ""
    var currentOperator = Operator.Empty
    var result = ""
    
    enum Operator: String {
        case Divide = "/"
        case Multiply = "x"
        case Subtract = "-"
        case Add = "+"
        case Equal = "="
        case Empty = "Empty"
    }
    private var myOperator:String = ""
    
    @IBOutlet weak var lblCaculResust: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnNumberClicked(_ sender: UIButton) {
//        if currentOperator == .Equal {
//            currentNumber = "0"
//            firstOpperand = ""
//            secondOpperand = ""
//            currentOperator = Operator.Empty
//            result = ""
//            lblCaculResust.text!.removeAll()
//            lblCaculResust.text! = currentNumber
//        }
        if(currentNumber == "0"){
            currentNumber.append(sender.titleLabel!.text!)
            currentNumber.removeFirst()
        } else {
        currentNumber.append(sender.titleLabel!.text!)
        }
        lblCaculResust.text! = currentNumber
    }
    
    @IBAction func btnDotClicked(_ sender: Any) {
        if currentNumber == "" {
        currentNumber = "0."
        }
        if (!currentNumber.contains(".")){
            currentNumber.append(".")
        }
        lblCaculResust.text! = currentNumber
    }
    
    @IBAction func btnClearClicked(_ sender: Any) {
        currentNumber = "0"
        firstOpperand = ""
        secondOpperand = ""
        currentOperator = Operator.Empty
        result = ""
        lblCaculResust.text!.removeAll()
        lblCaculResust.text! = currentNumber
    }
    
    @IBAction func btnAddClicked(_ sender: UIButton) {
        processOperation(operation: .Add)
    }
    
    @IBAction func btnSubtractClicked(_ sender: UIButton) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func btnMutiplyClicked(_ sender: UIButton) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func btnDivideClicked(_ sender: UIButton) {
        processOperation(operation: .Divide)
    }
    
    @IBAction func btnEqualClicked(_ sender: UIButton) {
        print("1: Operator\(currentOperator)")
        if(currentOperator != .Empty) {
            processOperation(operation: currentOperator)
        }
        else {
            processOperation(operation: .Equal)
        }
        print("""
             currentNumber = \(currentNumber)
             firstOpperand = \(firstOpperand)
             secondOpperand = \(secondOpperand)
             currentOperator = \(currentOperator)
             result = \(result)
             """ )
    }
    
    func processOperation(operation: Operator) {
        if currentOperator != . Empty {
            print("2: Operator\(currentOperator)")
            if currentNumber != "" {
                secondOpperand = currentNumber
                currentNumber = ""

                if currentOperator == .Add {
                    result = "\(Double(firstOpperand)! + Double(secondOpperand)!)"
                } else if currentOperator == .Subtract {
                    result = "\(Double(firstOpperand)! - Double(secondOpperand)!)"
                } else if currentOperator == .Multiply {
                    result = "\(Double(firstOpperand)! * Double(secondOpperand)!)"
                } else if currentOperator == .Divide {
                    result = "\(Double(firstOpperand)! / Double(secondOpperand)!)"
                }

                firstOpperand = result
                lblCaculResust.text = result
            }

            currentOperator = operation
        }

        else {
            if(operation != .Equal) {
                firstOpperand = currentNumber
                secondOpperand = firstOpperand
                currentOperator = operation
            } else {
                firstOpperand = currentNumber
                result = currentNumber
                lblCaculResust.text = removeDotZero(number: result)
                currentOperator = .Equal
            }
        }
//        if currentOperator != . Empty {
//        }
//        else {
//            firstOpperand = currentNumber
//            if secondOpperand == "" {
//            secondOpperand = firstOpperand
//            }
//            if currentOperator == .Add {
//                result = "\(Double(firstOpperand)! + Double(secondOpperand)!)"
//            } else if currentOperator == .Subtract {
//                result = "\(Double(firstOpperand)! - Double(secondOpperand)!)"
//            } else if currentOperator == .Multiply {
//                result = "\(Double(firstOpperand)! * Double(secondOpperand)!)"
//            } else if currentOperator == .Divide {
//                if Double(secondOpperand)! == 0 {
//                    result = "Not a number"
//                }
//                else {
//                    result = "\(Double(firstOpperand)! / Double(secondOpperand)!)"
//                }
//            } else if
//
//            currentOperator = operation
//        }
        
    }
    
    func removeDotZero(number: String) -> String {
        var num = number
        while (num.hasSuffix("0") && num.contains(".")) {
            num.removeLast()
        }
        if(num.hasSuffix(".")) {
            num.removeLast()
        }
        return num
    }

}
