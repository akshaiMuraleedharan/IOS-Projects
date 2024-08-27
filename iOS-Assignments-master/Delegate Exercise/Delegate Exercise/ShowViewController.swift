//
//  ShowViewController.swift
//  Delegate Exercise
//
//  Created by Subhosting's Mac Mini on 12/09/23.
//

import UIKit

protocol ShowValueDelegate {
    func didFinishEnterValue(value: String)
    func didNotEnterValue(value: String)
}

class ShowViewController: UIViewController {
    //MARK: Outlets and properties
    @IBOutlet weak var showTextField: UITextField!
    var delegate: ShowValueDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Button Action
    @IBAction func showbuttonAction(_ sender: UIButton) {
        if let textFieldValue = showTextField.text {
            delegate?.didFinishEnterValue(value: textFieldValue)
            self.dismiss(animated: true)
        }
    }
}
