//
//  ViewController.swift
//  DemonstrationAnimation
//
//  Created by Саша Amigo on 13.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    func startRandomiser() {
        let viewRandom = Random()
        colorViewAnimation.animation = viewRandom.randomAnimationName!
        colorViewAnimation.curve = viewRandom.randomAnimationCurve!
        colorViewAnimation.force = ceil(drand48() * 100)/100
        colorViewAnimation.duration = ceil(drand48() * 100)/100
        colorViewAnimation.delay = ceil(drand48() * 100)/100
        colorViewAnimation.animate()
        
        presetTitle.text = "presets: " + viewRandom.randomAnimationName!
        curveTitle.text = "curve: " + colorViewAnimation.curve
        forceTitle.text =  "force: " + colorViewAnimation.force.description
        durationTitle.text = "duration: " + colorViewAnimation.duration.description
        delayTitle.text = "delay: " + colorViewAnimation.delay.description
    }
    
    override func viewDidLoad() {
        presetTitle.text = "presets: " + colorViewAnimation.animation
        curveTitle.text = "curve: " + colorViewAnimation.curve
        forceTitle.text =  "force: " + colorViewAnimation.force.description
        durationTitle.text = "duration: " + colorViewAnimation.duration.description
        delayTitle.text = "delay: " + colorViewAnimation.delay.description
    }
    
    @IBOutlet weak var colorViewAnimation: SpringView!
    
    @IBOutlet weak var presetTitle: UILabel!
    @IBOutlet weak var curveTitle: UILabel!
    @IBOutlet weak var forceTitle: UILabel!
    @IBOutlet weak var durationTitle: UILabel!
    @IBOutlet weak var delayTitle: UILabel!
    
    
    @IBAction func runButton() {
        startRandomiser()
    }
}

