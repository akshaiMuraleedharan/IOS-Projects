//
//  ThirdViewController.swift
//  Delegate Exercise
//
//  Created by Subhosting's Mac Mini on 13/09/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var thirdTextField: UITextField!
    var delegate: ShowValueDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func thirdVCButtonAction(_ sender: UIButton) {
        if let textFieldValue = thirdTextField.text {
            delegate?.didFinishEnterValue(value: textFieldValue)
            self.dismiss(animated: true)
        }
    }
}
