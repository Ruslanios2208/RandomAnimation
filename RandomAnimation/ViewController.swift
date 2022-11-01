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
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
//        infoSpringView.animation =
//        infoSpringView.curve =
//        infoSpringView.force =
//        sender.setTitle("", for: .normal)
        infoSpringView.animate()
    }
}

