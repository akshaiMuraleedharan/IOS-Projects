//
//  File.swift
//  BMI Calculator Excercise
//
//  Created by Subhosting's Mac Mini on 24/08/23.
//

import Foundation
import UIKit

class secondDemo: UIViewController {
    var fullName: String?
    var age: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLabel()
    }
    
    func createLabel() {
        self.view.backgroundColor = UIColor.blue
        let label1 = UILabel()
        label1.text = fullName
        label1.frame = CGRect(x: 20, y: 20, width: 100, height: 50)
        label1.backgroundColor = .black
        let label2 = UILabel()
        label2.text = String(age)
        label2.frame = CGRect(x: 150, y: 20, width: 50, height: 50)
        label2.backgroundColor = .red
        self.view.addSubview(label1)
        self.view.addSubview(label2)
    }
}
