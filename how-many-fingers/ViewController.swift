//
//  ViewController.swift
//  how-many-fingers
//
//  Created by Christopher Migliorini on 8/3/16.
//  Copyright © 2016 ObviPop LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuess: UITextField!
    
    @IBAction func clickGuess(_ sender: AnyObject) {
        
        let correctGuess = String(arc4random_uniform(6))
        
        if userGuess.text == correctGuess {
            resultGuess.text = "You are correct sir!"
        }
        else {
            resultGuess.text = "Wrong! It was " + correctGuess + "."
            
        }
    }

    @IBOutlet weak var resultGuess: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

