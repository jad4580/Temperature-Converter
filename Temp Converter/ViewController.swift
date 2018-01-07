//
//  ViewController.swift
//  Temp Converter
//
//  Created by Justin Doan on 1/3/18.
//  Copyright © 2018 Justin Doan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var numOfConvLabel: UILabel!
    var counter: Int = 0
    @IBOutlet weak var entryTempTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonClicked(_ sender: UIButton) {
        if let result = entryTempTextField.text {
            if (result == "") {
                return
            } else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    answerLabel.text = String(output)
                    counter += 1
                    numOfConvLabel.text = String(counter) + " conversions"
                }
            }
        }
    }
}

