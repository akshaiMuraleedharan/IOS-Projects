//
//  XylophoneViewController.swift
//  XylophoneExcercise
//
//  Created by Subhosting's Mac Mini on 02/08/23.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController {
    
//MARK: outlet
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//MARK: button actions
    
    
    @IBAction func musicNoteButtonPress(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "X")
        let tunes = sender.titleLabel?.text ?? "X"
        playSound(tunes: tunes)
    }
    
    func playSound(tunes: String){
        let url = Bundle.main.url(forResource: tunes, withExtension: "wav", subdirectory: "Sounds")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()

    }

}
