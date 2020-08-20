//
//  ViewController.swift
//  BorisovBV_HW2.2
//
//  Created by Борис  on 20.08.2020.
//  Copyright © 2020 EightSixStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    

    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.size.width/2
        redLight.clipsToBounds = true
        redLight.alpha = 0.3
           
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        yellowLight.clipsToBounds = true
        yellowLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
        greenLight.clipsToBounds = true
        greenLight.alpha = 0.3
        
        
        
    }
    
var i = 1
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
      
        buttonLabel.setTitle("Next", for: .normal)
        
   
        
        if i==3{
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            i = 1
        }
        else if i==2 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            i = 3
        }else if i==1{
            greenLight.alpha = 0.3
            redLight.alpha = 1
            i = 2
        }
        
            
      
        
    }
}

