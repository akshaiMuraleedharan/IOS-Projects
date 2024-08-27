//
//  ViewController.swift
//  BMI Calculator Excercise
//
//  Created by Subhosting's Mac Mini on 22/08/23.
//

import UIKit

class BmiViewController: UIViewController {
    
//MARK: Outlets And Properties
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    var bmiLogic = BmiBusinessLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.cornerRadius = 15
    }
    
//MARK: Button and Slider Action
    @IBAction func heightSlideAction(_ sender: UISlider) {
        let height = String(format: "%.1f", heightSlider.value)
        heightText.text = "\(height)m"
    }
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let weight = String(format: "%.0f", weightSlider.value)
        weightText.text = "\(weight)Kg"
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        bmiLogic.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResultVC", sender: self)
    }

//MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResultVC"){
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiResult = bmiLogic.getBMIValue()
            resultVC.bmiAdvice = bmiLogic.getAdvice()
            resultVC.bmiColor = bmiLogic.getColor()
        }
    }
}
