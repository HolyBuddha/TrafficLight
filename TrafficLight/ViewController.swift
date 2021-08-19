//
//  ViewController.swift
//  TrafficLight
//
//  Created by Vladimir Izmaylov on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        if redLightView.alpha == 0.3 {
            redLightView.alpha = 1.0
        } else if redLightView.alpha == 1.0 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
        } else if yellowLightView.alpha == 1.0 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
        } else {
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
        }
    }
    
}

