//
//  ViewController.swift
//  TraficLight
//
//  Created by Elizabeth on 29/01/2023.
//

import UIKit

enum CurrentTrafficLight{
    case red
    case yellow
    case green
}


class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var currentLight = CurrentTrafficLight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOf: CGFloat = 0.3
    
    @IBOutlet var buttonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOf
        yellowLight.alpha = lightIsOf
        greenLight.alpha = lightIsOf
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
    }
    
    @IBAction func changeLight() {
        if buttonNext.currentTitle == "START" {
            buttonNext.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOf
            redLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOf
            currentLight = .yellow
        case .yellow:
            greenLight.alpha = lightIsOf
            redLight.alpha = lightIsOf
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            redLight.alpha = lightIsOf
            yellowLight.alpha = lightIsOf
            currentLight = .red
        }
            
    }
        
}
    
    


