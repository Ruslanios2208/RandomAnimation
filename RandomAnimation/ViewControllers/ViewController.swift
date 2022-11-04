//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Руслан Шигапов on 01.11.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var infoSpringView: SpringView!
    @IBOutlet var parametersLabel: UILabel! {
        didSet {
            parametersLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        parametersLabel.text = animation.description
        
        infoSpringView.animation = animation.preset
        infoSpringView.curve = animation.curve
        infoSpringView.force = animation.force
        infoSpringView.duration = animation.duration
        infoSpringView.delay = animation.delay
        infoSpringView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Start \(animation.preset)", for: .normal)
    }
}

