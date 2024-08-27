//
//  viewControllerDemo.swift
//  BMI Calculator Excercise
//
//  Created by Subhosting's Mac Mini on 24/08/23.
//

import UIKit

class DemoViewController: UIViewController {
    
    var bmi: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        let label = UILabel()
        label.text = "BMI: \(bmi ?? "0")"
        label.frame = CGRect(x: 20, y: 20, width: 100, height: 50)
        label.backgroundColor = .black
        self.view.addSubview(label)
    }
    
}
