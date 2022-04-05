//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Daniil on 5.04.22.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func animationButtonPressed(_ sender: Any) {
        presetLabel.text = "preset: presetName"
        curveLabel.text = "curve: curveName"
        forceLabel.text = "force: \(randomiseLabel())"
        durationLabel.text = "duration: \(randomiseLabel())"
        delayLabel.text = "delay: \(randomiseLabel())"
    }
    
    private func randomiseLabel() -> Double {
        let doubledRandom = Double.random(in: 0.0...1.0)
        return round(doubledRandom * 100) / 100.0
    }
}

