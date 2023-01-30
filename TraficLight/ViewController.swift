//
//  ViewController.swift
//  TraficLight
//
//  Created by Elizabeth on 29/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greenSign: UIView!
    @IBOutlet var yellowSign: UIView!
    @IBOutlet var redSign: UIView!
    @IBOutlet var nextColorButton: UIButton!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        greenSign.layer.cornerRadius =  greenSign.frame.size.height / 2
        yellowSign.layer.cornerRadius = yellowSign.frame.size.width / 2
        redSign.layer.cornerRadius = redSign.frame.size.width / 2
        
        greenSign.alpha = 0.5
        yellowSign.alpha = 0.5
        redSign.alpha = 0.5
    }
    
    @IBAction func changeColor() {
        nextColorButton.setTitle("NEXT", for:.normal)
        if redSign.alpha == 1 {
            redSign.alpha = 0.5
            yellowSign.alpha = 1
        } else if yellowSign.alpha == 1 {
            yellowSign.alpha = 0.5
            greenSign.alpha = 1
        } else if greenSign.alpha == 1 {
            greenSign.alpha = 0.5
            redSign.alpha = 1
        } else {
            redSign.alpha = 1
        }
        }
    }
    


