//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Daniil on 5.04.22.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
