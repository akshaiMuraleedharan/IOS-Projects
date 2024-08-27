//
//  ViewController.swift
//  MiniCalculator
//
//  Created by Subhosting's Mac Mini on 01/08/23.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: outlet and properties
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    
    var textOfFirstName: String = ""
    var textOfSecondname: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func combineAction(_ sender: Any) {
        resultLabel.text = combine(textOfFirstName: firstName.text!, textOfSecondName: secondName.text!)
    }
    
    func combine(textOfFirstName: String, textOfSecondName: String) -> String {
        let combined = textOfFirstName + " " + textOfSecondName
        return combined
    }
}
