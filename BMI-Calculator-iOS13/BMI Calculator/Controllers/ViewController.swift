//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHeight: UILabel!
    @IBOutlet var lblWeight: UILabel!
    @IBOutlet var hightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        let hight = hightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(hight, 2)
        
        print(bmi)
        
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    
        
    
}


