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
        greenLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        redLightView.layer.cornerRadius = 50
    }

    @IBAction func startButtonPressed() {
        if redLightView.alpha == 0.3 {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1.0
        } else if redLightView.alpha == 1.0 {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
        } else if yellowLightView.alpha == 1.0 {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
        } else {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
        }
    }
    
}

