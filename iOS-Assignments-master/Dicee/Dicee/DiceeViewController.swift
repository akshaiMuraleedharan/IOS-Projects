//
//  DiceeViewController.swift
//  Dicee
//
//  Created by Subhosting's Mac Mini on 25/07/23.
//

import UIKit

class DiceeViewController: UIViewController {
    
    
    @IBOutlet weak var diceBoxOne: UIImageView!
    @IBOutlet weak var diceeBoxTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: Button Action
    @IBAction func buttonPress(_ sender: Any) {
        let arrayNames : [String] = ["diceeOneImage","diceeOneImage","diceeThreeImage","diceeFourImage","diceeFiveImage","diceeSixImage",]
        
        diceBoxOne.image = UIImage(named: arrayNames[Int.random(in: 0...5)])
        diceeBoxTwo.image = UIImage(named: arrayNames[Int.random(in: 0...5)])
    }
    
}

