//
//  ViewController.swift
//  Calculator
//
//  Created by Muchengeti Matinde on 12/02/19.
//  Copyright © 2019 Muchengeti Matinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen : Double = 0;
    var previousNumber : Double = 0;
    var performingMath = false;
    var operation = 0;
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        //checking if number has already been input previously meaning we need to store new number
        if performingMath == true{
            label.text = String(sender.tag) //equal to number user just input
            numberOnScreen = Double(label.text!)!
            performingMath = false//now in the process of typing in a new number
            
        }
        else{
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
        }
        //display numbers user has typed (at this point saved as a string)
        //label.text = label.text! + String(sender.tag)//exclamation mark is force unwrap and after is string conversion
        //numberOnScreen = Double(label.text!)!
    }
    
    
    @IBAction func operations(_ sender: UIButton) {
        //need to first check if theres a number there and button pressed isnt reset/equal button
        if label.text != "" && sender.tag != 14 && sender.tag != 15
        {
            previousNumber = Double(label.text!)!
            if sender.tag == 10{//subtract
                
            }
            else if sender.tag == 11{//add
                
            }
            else if sender.tag == 12{//divide
                
            }
            else if sender.tag == 13{//multiply
                
            }
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 14{//Enter
            
            if operation == 10{
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 11{
                label.text = String(previousNumber + numberOnScreen)
            }
            else if operation == 12{
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13{
                label.text = String(previousNumber * numberOnScreen)
            }
        }
        else if sender.tag == 15{//Clear
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

