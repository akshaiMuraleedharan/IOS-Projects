//
//  ViewController.swift
//  Tipsy Exercise
//
//  Created by Subhosting's Mac Mini on 29/08/23.
//

import UIKit

class InputViewController: UIViewController {
//MARK: Outlets and Properties
    @IBOutlet weak var splitValue: UILabel!
    @IBOutlet weak var stepperSplit: UIStepper!
    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    var tipLogic = TipBusinessLogic()
    var tipValue: String?
    var tips: Int?
    var bill: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Button and Stepper Actions
    @IBAction func tipButtonAction(_ sender: UIButton) {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        tipValue = sender.titleLabel?.text ?? ""
        if (tipValue == "0%") {
            tips = 0
        } else if (tipValue == "10%") {
            tips = 10
        } else {
            tips = 20
        }
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        let split = String(format: "%.0f", stepperSplit.value)
        splitValue.text = "\(split)"
    }
    @IBAction func buttonCalculate(_ sender: UIButton) {
        guard let bill = Float(billValue.text ?? "") else {
            showAlert()
            return
        }
        tipLogic.calcuateTip(bill: bill, billTip: Float(tips ?? 0), numberOfPerson: stepperSplit.value)
        self.shouldPerformSegue(withIdentifier: "tipResultVC", sender: self)
    }
    
    //MARK: Functions
    func showAlert() {
        let alert = UIAlertController(title: "Alert", message: "Please enter bill amount", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(alert, animated: true)
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "tipResultVC") {
            let resultVC = segue.destination as! ResultViewController
            resultVC.split = tipLogic.getSplitValue()
            resultVC.splitInformation = tipLogic.getSplitDetail()
        }
    }
}
