//
//  ViewController.swift
//  LabelAndTextField
//
//  Created by Subhosting's Mac Mini on 01/08/23.
//

import UIKit

class ViewController: UIViewController {
//MARK: Outlets
    
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var textFieldSample: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//MARK: Button action
    
    @IBAction func printAction(_ sender: UIButton) {
        var textFromField = textFieldSample.text
        printLabel.text = textFromField
    }
    
}

