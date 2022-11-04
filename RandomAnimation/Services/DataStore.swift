//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Руслан Шигапов on 02.11.2022.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
