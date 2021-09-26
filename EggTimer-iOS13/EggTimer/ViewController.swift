
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player : AVAudioPlayer!
    
    @IBAction func hardnessSelectors(_ sender : UIButton) {

        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]! * 60
        
 
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress

        } else {
            timer.invalidate()
            playSound() 
            titleLabel.text = "DONE!"
        }
        
    }
    
    func playSound() {

        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
        
    }
    

        
        /*
         
        if ( hardness == "Soft" ) {
            print(softTime)
            
        } else if ( hardness == "Medium") {
            print(mediumTime)
            
        } else {
        print(hardTime)
        }
    }
    */
    
}
