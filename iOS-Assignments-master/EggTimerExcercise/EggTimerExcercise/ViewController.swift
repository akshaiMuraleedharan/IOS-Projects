//
//  ViewController.swift
//  EggTimerExcercise
//
//  Created by Subhosting's Mac Mini on 03/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//MARK: Button Action

    @IBAction func buttonpress(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "No label")
    }
}

