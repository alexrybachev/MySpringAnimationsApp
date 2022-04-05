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
    static func getAnimaion() -> [Animation] {
        var animations: [Animation] = []
        let dm = DataManager.shared
        
        let iteration = min(dm.presets.count, dm.curves.count)
        
        for index in 0..<iteration {
            let animation = Animation(
                preset: dm.presets[index],
                curve: dm.curves[index],
                force: Double.random(in: 0.3...1),
                duration: Double.random(in: 0.3...2),
                delay: Double.random(in: 0.3...1)
            )
            animations.append(animation)
        }
        
        return animations
    }
}
