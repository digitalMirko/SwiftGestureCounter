//
//  ViewController.swift
//  Gesture Counter
//
//  Created by Mirko Cukich on 8/4/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
//  Swift Gesture Counter - Demo 4 of 30

import UIKit

class ViewController: UIViewController {

    // counter label
    @IBOutlet weak var counterLabel: UILabel!
    
    // number formatter
    let numberFormatter = NumberFormatter()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // int value for numbers, no floats
        numberFormatter.allowsFloats = false
        
    }
    
    // Gesture - Tap Gesture Recognizer
    @IBAction func tappedOnScreen(_ sender: UITapGestureRecognizer) {
        // increments number by 1
        self.incrementCounter()
    }
    
    // Gesture - Long Press Gesture Recognizer
    @IBAction func longPressedOnScreen(_ sender: UILongPressGestureRecognizer) {
        // increments number by 1
        self.incrementCounter()
    }
    
    // Reset Counter Button
    @IBAction func resetButton(_ sender: Any) {
        // resets counter to 0
        counterLabel.text = "\(0)"
    }
    
    // increments counter
    func incrementCounter() {
        if let number = numberFormatter.number(from: counterLabel.text!) {
            counterLabel.text = "\(number.intValue + 1)"
        }
    }
    
}

