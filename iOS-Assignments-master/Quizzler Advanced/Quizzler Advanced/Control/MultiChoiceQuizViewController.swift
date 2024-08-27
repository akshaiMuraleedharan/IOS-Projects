//
//  MultiChoiceQuizViewController.swift
//  Quizzler Advanced
//
//  Created by Subhosting's Mac Mini on 21/08/23.
//

import UIKit

class MultiChoiceQuizViewController: UIViewController {

    //MARK: Properties and Outlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    
    var quizLogics = QuizBusinessLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let answer = (sender.titleLabel?.text)!
        if (quizLogics.checkAnswers(correct: answer)) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizLogics.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(MultiChoiceQuizViewController.updateUI), userInfo: nil, repeats: true)
        
    }
    
    //MARK: Functions
    @objc func updateUI(){
        let score = quizLogics.getScore()
        progressBar.progress = quizLogics.getProgress()
        questionLabel.text = quizLogics.getQuestion()
        setButtonUI()
        scoreLabel.text = "Score: \(score)"
    }
    
    func setButtonUI() {
        let answerArray = quizLogics.getAnswer()
        oneButton.setTitle(answerArray[0], for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        twoButton.setTitle(answerArray[1], for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        threeButton.setTitle(answerArray[2], for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        oneButton.backgroundColor = UIColor.clear
        twoButton.backgroundColor = UIColor.clear
        threeButton.backgroundColor = UIColor.clear
    }

}
