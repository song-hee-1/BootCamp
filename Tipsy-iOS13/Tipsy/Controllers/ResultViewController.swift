//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 한송희 on 2021/10/06.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var billValue = "0.0"
    var numberOfPeopleValue = 2
    var tipValue = 10
    
    
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = billValue
        settingsLabel.text = "Split between \(numberOfPeopleValue) people, with \(tipValue)% tip."
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        
        self.dismiss(animated: true, completion: nil)
    }
    
    



}
