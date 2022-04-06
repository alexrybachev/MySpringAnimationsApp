//
//  DataManager.swift
//  MySpringAnimationsApp
//
//  Created by Aleksandr Rybachev on 05.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
