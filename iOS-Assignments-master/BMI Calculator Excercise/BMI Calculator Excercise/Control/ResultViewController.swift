//
//  ResultViewController.swift
//  BMI Calculator Excercise
//
//  Created by Subhosting's Mac Mini on 24/08/23.
//

import UIKit

class ResultViewController: UIViewController {
//MARK:  Outlets and Properties
    @IBOutlet weak var recalculateButton: UIButton!
    @IBOutlet weak var bmiValueText: UILabel!
    @IBOutlet weak var bmiResultText: UILabel!
    
    var bmiResult: String?
    var bmiAdvice: String?
    var bmiColor: UIColor = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recalculateButton.layer.cornerRadius = 15
        bmiValueText.text = bmiResult
        bmiResultText.text = bmiAdvice?.uppercased()
        self.view.backgroundColor = self.bmiColor
    }
    
    @IBAction func recalculateButtonAction(_ sender: UIButton) {
        self.dismiss(animated: true)
        }
}
