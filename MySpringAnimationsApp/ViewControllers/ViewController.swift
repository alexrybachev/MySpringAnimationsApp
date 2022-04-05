//
//  ViewController.swift
//  MySpringAnimationsApp
//
//  Created by Aleksandr Rybachev on 05.04.2022.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    // MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeViewLabels(animation)
    }
    
    // MARK: - IBAction
    @IBAction func startSpringAnimButton(_ sender: UIButton) {
        changeViewLabels(animation)
        
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func changeViewLabels(_ animation: Animation) {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(string(animation.force))"
        durationLabel.text = "duration: \(string(animation.duration))"
        delayLabel.text = "delay: \(string(animation.delay))"
    }
}

extension ViewController {
    
    private func string(_ double: Double) -> String {
        String(format: "%.2f", double)
    }
}

