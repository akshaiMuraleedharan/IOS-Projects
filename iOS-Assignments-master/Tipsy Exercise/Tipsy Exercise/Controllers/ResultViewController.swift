//
//  ResultViewController.swift
//  Tipsy Exercise
//
//  Created by Subhosting's Mac Mini on 30/08/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Outlets and Properties
    @IBOutlet weak var splitPerPerson: UILabel!
    @IBOutlet weak var splitDetail: UILabel!
    var split: String?
    var splitInformation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splitPerPerson.text = split
        splitDetail.text = splitInformation
    }
    
    //MARK: Button Action
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
