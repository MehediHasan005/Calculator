//
//  ViewController.swift
//  CalCulator_01
//
//  Created by Macbook Pro 2015 on 23/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0 ;
    var previousnumber:Double = 0 ;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var lebel01: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true
        {
            lebel01.text = String(sender.tag-1)
            numberOnScreen = Double(lebel01.text!)!
            performingMath = false
        }
        else{
            lebel01.text = lebel01.text! + String(sender.tag-1)
            numberOnScreen = Double(lebel01.text!)!
        }
       
    }
    
    
    
    @IBAction func Buttons(_ sender: UIButton) {
        
        
        if lebel01.text != "" && sender.tag != 11 && sender.tag != 16
        {
            
            previousnumber = Double(lebel01.text!)!
            if sender.tag == 12 // Divide
            {
                lebel01.text = "/" ;
            }
            else if sender.tag == 13 // multiply
            {
                lebel01.text = "X" ;
            }
            else if sender.tag == 14 // minus
            {
                lebel01.text = "-" ;
            }
            else if sender.tag == 15 //plus
            {
                lebel01.text = "+" ;
            }
            
            operation = sender.tag
            performingMath = true ;
        }
        else if sender.tag ==  16
        {
            if operation == 12
            {
                lebel01.text = String( previousnumber / numberOnScreen)

            }
            else if operation == 13
            {
                lebel01.text = String(previousnumber * numberOnScreen )

            }
            else if operation == 14
            {
                lebel01.text = String(previousnumber - numberOnScreen)

            }
            else if operation == 15
            {
                lebel01.text = String(previousnumber + numberOnScreen)
            }
            
        }
        else if sender.tag == 11
        {
            lebel01.text = ""
            numberOnScreen = 0;
            previousnumber = 0;
            operation = 0;
        }
        print(numberOnScreen)
        print(previousnumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

