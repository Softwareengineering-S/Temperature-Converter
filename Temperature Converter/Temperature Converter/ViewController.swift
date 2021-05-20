//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Monique Shaqiri on 11.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var tempEntry: UITextField!
    @IBOutlet var conversionsLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertButton(_ sender: UIButton) {
        if let result = tempEntry.text {
            if result == "" {
                return
                
            }else{
                if let num = Double(result){
                let output = num * (9/5) + 32
                resultLabel.text = String(output)
                updateCountByOne()
                    
            }
        }
        
    }
    
}
    func updateCountByOne() {
        count += 1
    conversionsLabel.text = String(count) + " Conversions"
    }
}
