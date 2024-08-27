//
//  ViewController.swift
//  EggTimerExcercise
//
//  Created by Subhosting's Mac Mini on 03/08/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var labelName: UILabel!
    
    var progressBarTimer: Timer?
    var player: AVAudioPlayer?
    var eggDict: [String : Int] = ["Soft" : 15,
                                   "Medium" : 20,
                                   "Hard" : 25]
    var totaltime: Int = 0
    var secondsPassed: Int = 0
    var sound: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //MARK: Button Action
    @IBAction func buttonSoft(_ sender: UIButton) {
        progressBar.progress = 0.0
        secondsPassed = 0
        totaltime = eggDict[sender.currentTitle!]!
        self.progressBarTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        if(sender.currentTitle == "Soft"){
            labelName.text = sender.currentTitle
            sound = "A"
        }else if(sender.currentTitle == "Medium"){
            labelName.text = sender.currentTitle
            sound = "B"
        } else if(sender.currentTitle == "Hard"){
            labelName.text = sender.currentTitle
            sound = "C"
        }
    }
    
    //MARK: Update timer
    @objc func updateTimer(){
        
        
        if(secondsPassed < totaltime){
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totaltime)
        } else {
            progressBarTimer?.invalidate()
            let tune = Bundle.main.url(forResource: sound, withExtension: "wav", subdirectory: "Sounds")
            player = try! AVAudioPlayer(contentsOf: tune!)
            player?.play()
            
        }
    }
    
    
}
