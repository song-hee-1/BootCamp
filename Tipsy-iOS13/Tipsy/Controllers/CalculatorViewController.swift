//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.10
    

    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!
    

    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        let buttonTitle = sender.currentTitle!
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitleMinusPercent = String(buttonTitle.dropLast())
        let buttonTitleNumber = Double(buttonTitleMinusPercent)!
        
        tip = buttonTitleNumber / 100
        print(tip)
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        let stepperCurrentValue = String(format: "%.0f", sender.value)
        splitNumberLabel.text = stepperCurrentValue
    }
    

    @IBAction func CalculateButtonPressed(_ sender: UIButton,stepperCurrentValue:String) {
       
       print(stepperCurrentValue)
        
    }
    
    
    
    
    

}

