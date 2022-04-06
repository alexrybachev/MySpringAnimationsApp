//
//  ViewController.swift
//  MySpringAnimationsApp
//
//  Created by Aleksandr Rybachev on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeViewLabels(animation)
    }
    
    // MARK: - IBAction
    @IBAction func startSpringAnimButton(_ sender: UIButton) {
        changeViewLabels(animation)
        startAnimation(animation)
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func changeViewLabels(_ animation: Animation) {
        descriptionLabel.text = animation.description
    }
    
    private func startAnimation(_ animation: Animation) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
    }
}


