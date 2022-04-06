//
//  DataManager.swift
//  CocoaPodsApp
//
//  Created by Daniil on 6.04.22.
//

import Spring

struct DataManager {
    
    static let sharedData = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let animationCurves = Spring.AnimationCurve.allCases
}
