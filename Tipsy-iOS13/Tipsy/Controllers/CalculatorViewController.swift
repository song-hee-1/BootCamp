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
    var numberOfpeople = 2
    var billTotal = 0.0
    var billValue = "0.0"

    

    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!
    

    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        billTextField.endEditing(true)
        
        let buttonTitle = sender.currentTitle!
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitleMinusPercent = String(buttonTitle.dropLast())
        let buttonTitleNumber = Double(buttonTitleMinusPercent)!
        
        tip = buttonTitleNumber / 100


        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        let stepperCurrentValue = String(format: "%.0f", sender.value)
        splitNumberLabel.text = stepperCurrentValue
        numberOfpeople = Int(stepperCurrentValue)!
    }
    

    @IBAction func CalculateButtonPressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal =  Double(bill)!
            let result = billTotal * ( 1 + tip ) / Double(numberOfpeople)
            billValue = String(format: "%.2f", result)
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.billValue = billValue
            destinationVC.numberOfPeopleValue = numberOfpeople
            destinationVC.tipValue = Int(tip *  100)
            
            
        }
        
    }
    
    

}

