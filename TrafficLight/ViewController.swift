//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artem H on 19.09.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLigthView: UIView!
    @IBOutlet var yellowLigthView: UIView!
    @IBOutlet var greenLigthView: UIView!
    @IBOutlet var controlLightDidStart: UIButton!
    
    private var currentState = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLigthView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        yellowLigthView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
        greenLigthView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        
        redLigthView.layer.cornerRadius = 50
        yellowLigthView.layer.cornerRadius = 50
        greenLigthView.layer.cornerRadius = 50
        controlLightDidStart.layer.cornerRadius = 8
    }
    
    @IBAction func controlLightDidStart(_ sender: Any) {
        controlLightDidStart.setTitle("NEXT", for: .normal)
        
        switch currentState {
        case 1:
            redLigthView.backgroundColor = .red
            yellowLigthView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
            greenLigthView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
            currentState = 2
        case 2:
            redLigthView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
            yellowLigthView.backgroundColor = .yellow
            greenLigthView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
            currentState = 3
        case 3:
            redLigthView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
            yellowLigthView.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
            greenLigthView.backgroundColor = .green
            currentState = 1
        default:
            break
        }
    }
    

}

