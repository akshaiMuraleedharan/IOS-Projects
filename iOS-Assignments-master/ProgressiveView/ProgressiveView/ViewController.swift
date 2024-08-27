//
//  ViewController.swift
//  ProgressiveView
//
//  Created by Subhosting's Mac Mini on 04/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    var progressBarTimer: Timer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        progressBar.progress = 0.0
    }

//MARK: Button Action
    @IBAction func buttonPress(_ sender: UIButton) {
        
        self.progressBarTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateProgressBar), userInfo: nil, repeats: true)
        }
        
    @objc func updateProgressBar(){
        progressBar.progress += 0.1
        progressBar.setProgress(progressBar.progress, animated: true)
        if(progressBar.progress == 1.0){
            progressBarTimer!.invalidate()
        }
    }

}

