//
//  BmiBusinessLogic.swift
//  BMI Calculator Excercise
//
//  Created by Subhosting's Mac Mini on 24/08/23.
//

import UIKit

struct BmiBusinessLogic {
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
      let bmiResult =  weight / pow(height, 2)
        if (bmiResult < 18.0) {
            bmi = BMI(bmiValue: bmiResult, bmiAdvice: "Eat more pies!", bmiColor: .red)
        } else if (bmiResult < 24.9) {
            bmi = BMI(bmiValue: bmiResult, bmiAdvice: "Fit as a fiddle!", bmiColor: .green)
        } else {
            bmi = BMI(bmiValue: bmiResult, bmiAdvice: "Eat less pies!", bmiColor: .blue)
        }
    }
    
    func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.bmiAdvice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.bmiColor ?? UIColor.white
    }
}
