//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 한송희 on 2021/10/04.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var bmi: Float = 0.0
 
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculatorBMI(height: Float, weight: Float) {
        
        let bmi = weight / pow(height, 2)
        
    }
    
    
}
