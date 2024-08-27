//
//  DestiniViewController.swift
//  DestiniExcercise
//
//  Created by Subhosting's Mac Mini on 21/08/23.
//

import UIKit

class DestiniViewController: UIViewController {
    
//MARK: outlets and properties
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2button: UIButton!
    
    var storyLogic = DestiniBusinessLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let choice = (sender.titleLabel?.text)!
        storyLogic.storyPath(story: choice)
        updateUI()
    }
    
   //MARK: Functions
    func updateUI(){
        storyLabel.text = storyLogic.getTitle()
        choice1Button.setTitle(storyLogic.getChoice1(), for: .normal)
        choice2button.setTitle(storyLogic.getChoice2(), for: .normal)
    }

}
