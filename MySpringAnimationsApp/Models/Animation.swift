//
//  Animation.swift
//  MySpringAnimationsApp
//
//  Created by Aleksandr Rybachev on 05.04.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getRandomAnimation() -> Animation {
        let dm = DataManager.shared
        
        let presets = dm.presets.shuffled()
        let curves = dm.curves.shuffled()
        
        let animation = Animation(
            preset: presets.first ?? "",
            curve: curves.first ?? "",
            force: Double.random(in: 0.3...1),
            duration: Double.random(in: 0.3...2),
            delay: Double.random(in: 0.3...1)
        )
        
        return animation
    }
}
