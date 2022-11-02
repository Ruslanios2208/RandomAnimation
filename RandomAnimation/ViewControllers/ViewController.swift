//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Руслан Шигапов on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var infoSpringView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValuesToLabels()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        infoSpringView.animation = animation.preset
        infoSpringView.curve = animation.curve
        infoSpringView.force = animation.force
        infoSpringView.duration = animation.duration
        infoSpringView.delay = animation.delay
        infoSpringView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Start \(animation.preset)", for: .normal)
    }
    
    private func setValuesToLabels() {
        presetLabel.text = "preset: " + animation.preset
        curveLabel.text = "curve: " + animation.curve
        forceLabel.text = "force: " + String(format: "%.2f", animation.force)
        durationLabel.text = "duration: " + String(format: "%.2f", animation.duration)
        delayLabel.text = "delay: " + String(format: "%.2f", animation.delay)
    }
}

