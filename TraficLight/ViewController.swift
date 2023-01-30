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
    @IBOutlet var nextColorButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenSign.layer.cornerRadius = 60
        yellowSign.layer.cornerRadius = 60
        redSign.layer.cornerRadius = 60
       
    }

    
    @IBAction func changeColor() {
    }
    
}

