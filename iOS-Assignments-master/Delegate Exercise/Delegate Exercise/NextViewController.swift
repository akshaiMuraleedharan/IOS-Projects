//
//  ViewController.swift
//  Delegate Exercise
//
//  Created by Subhosting's Mac Mini on 12/09/23.
//

import UIKit

class NextViewController: UIViewController, ShowValueDelegate {
    
    //MARK: Outlets and properties
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Button Action
    @IBAction func nextButtonAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToShowVC", sender: self)
    }
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToShowVC"){
            let showVC = segue.destination as! ShowViewController
            showVC.delegate = self
        }
        if (segue.identifier == "goToThirdVC"){
            let showVC = segue.destination as! ThirdViewController
            showVC.delegate = self
        }
    }
    
    //MARK: ShowValueDelegate Functions
    func didFinishEnterValue(value: String) {
        valueLabel.text = value
    }
    func didNotEnterValue(value: String) {
        valueLabel.text = value
    }
}
