//
//  ViewController.swift
//  karthikCals
//
//  Created by ISE-DEPT on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var mathOperations = false
    var operations = 0

    @IBOutlet weak var labelB: UILabel!
    
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if mathOperations == true
        {
            labelB.text = String(sender.tag-1)
            numberOnScreen = Double(labelB.text!)!
            mathOperations = false
        }
        else
        {
            labelB.text = labelB.text! + String(sender.tag-1)
            numberOnScreen = Double(labelB.text!)!
            
        }
    }
    
    
    
    @IBAction func operations(_ sender: UIButton)
    {
        if labelB.text != "" && sender.tag != 15 && sender.tag != 16
        {
            previousNumber = Double(labelB.text!)!
            if sender.tag == 11
            {
                labelB.text = "+"
            }
            else if sender.tag == 12
            {
                labelB.text = "-"
            }
            else if sender.tag == 13
            {
                labelB.text = "*"
            }
            else if sender.tag == 14
            {
                labelB.text = "/"
            }
            operations = sender.tag
            mathOperations = true
            
        }
        else if sender.tag == 15
        {
            if operations == 11
            {
                labelB.text = String(previousNumber + numberOnScreen)
            }
            else if operations == 12
            {
                labelB.text = String(previousNumber - numberOnScreen)
            }
           else if operations == 13
            {
                labelB.text = String(previousNumber * numberOnScreen)
            }
            else if operations == 14
            {
                labelB.text = String(previousNumber / numberOnScreen)
            }
        }
        else if sender.tag == 16
        {
            labelB.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operations = 0
        }
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

