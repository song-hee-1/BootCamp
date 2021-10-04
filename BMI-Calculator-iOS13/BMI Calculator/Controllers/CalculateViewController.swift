//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var lblHeight: UILabel!
    @IBOutlet var lblWeight: UILabel!
    @IBOutlet var hightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        lblHeight.text = "\(height)m"
        
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        lblWeight.text = "\(weight)Kg"
        
        }
        
        
    @IBAction func calculatorPressed(_ sender: UIButton) {
        let height = hightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        
        
        calculatorBrain.calculatorBMI(height: height, weight: weight)

        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
    
    
        
    
}


