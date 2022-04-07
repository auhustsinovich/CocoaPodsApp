//
//  Animation.swift
//  CocoaPodsApp
//
//  Created by Daniil on 6.04.22.
//
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        return """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        
        Animation(preset: DataManager.sharedData.animations.randomElement()?.rawValue ?? "nil",
                  curve: DataManager.sharedData.animationCurves.randomElement()?.rawValue ?? "nil",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...3),
                  delay: Float.random(in: 0.1...0.5)
        )
    }
}

