//
//  QuizViewController.swift
//  Quizzler
//
//  Created by Subhosting's Mac Mini on 14/08/23.
//

import UIKit

class QuizViewController: UIViewController {
    
//MARK: Outlets and Properties
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    

    var quizLogic = QuizBusinessLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

//MARK: Button Action
    @IBAction func buttonAction(_ sender: UIButton) {
        let answer = sender.titleLabel?.text
        if (quizLogic.checkAnswer(answer: answer!)) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizLogic.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(QuizViewController.updateUI), userInfo: nil, repeats: true)
    }
    
 //MARK: Functions
    @objc func updateUI(){
        let score = quizLogic.getScore()
        progressbar.progress = quizLogic.getProgress()
        labelText.text = quizLogic.getQuestion()
        scoreLabel.text = "Score: \(score)"
        buttonTrue.backgroundColor = UIColor.clear
        buttonFalse.backgroundColor = UIColor.clear
    }
}
