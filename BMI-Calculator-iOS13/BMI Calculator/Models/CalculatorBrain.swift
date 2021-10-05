//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 한송희 on 2021/10/04.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white    }
    
    
    
    mutating func calculatorBMI(height: Float, weight: Float) {

        let bmiValue = weight / pow (height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice:"Eat more cookies!🍪🍪", color: UIColor.blue )
            print("Underweight")
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice:"Fit as a fiddle!💪🏻💪🏻", color: UIColor.green )
            print("Normal")
        } else {
            bmi = BMI(value: bmiValue, advice:"Eat less cookies!", color: UIColor.red )
            print("Overweight")
        }
    }
    


    
}
