//
//  CalculatorBrain.swift
//  bmi-calculator
//
//  Created by Dulio Denis on 6/9/21.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        // BMI = weight / height * height
        bmi = weight / pow(height, 2)
    }
    
    func getBMI() -> Float {
        return bmi
    }
    
}
