//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let array = Story(t: "You see a fork in the road", c1: "Take a left", c2: "Take a right")
    

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story[title]
        choice1Button.setTitle.(story[c1], for: <#T##UIControl.State#>)
        choice2Button.setTitle(choice2, for: .normal)
    }
        
    
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    


}

