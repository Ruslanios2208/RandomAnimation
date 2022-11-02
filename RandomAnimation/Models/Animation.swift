//
//  Animation.swift
//  RandomAnimation
//
//  Created by Руслан Шигапов on 02.11.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        let shared = DataStore.shared
        
        let animation = Animation(
            preset: shared.presets.randomElement() ?? "",
            curve: shared.curves.randomElement() ?? "",
            force: Double.random(in: 0.7...1.8),
            duration: Double.random(in: 0.8...1.3),
            delay: Double.random(in: 0.2...0.5)
        )
        
        return animation
    }
}
