//
//  ViewController.swift
//  DGorshkovSwiftBook
//
//  Created by Dmitriy Gorshkov on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var redLightOnView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLight = "Off"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        
        redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
        greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 4
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 4
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 4
        
        
        
    }

    @IBAction func startButtonPressed() {
        switch currentLight {
        
        case "Red": redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                    yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(1)
                    currentLight = "Yellow"
        case "Yellow": yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                    greenLightView.backgroundColor = UIColor.green.withAlphaComponent(1)
                    currentLight = "Green"
        case "Green": greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                    redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
                    currentLight = "Red"
        default: redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
                    startButton.setTitle("NEXT", for: .normal)
                    currentLight = "Red"
            
        }
}

}
