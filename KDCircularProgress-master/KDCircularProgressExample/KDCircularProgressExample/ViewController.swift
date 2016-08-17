//
//  ViewController.swift
//  KDCircularProgressExample
//
//  Created by Kaan Dedeoglu on 2/12/15.
//  Copyright (c) 2015 Kaan Dedeoglu. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    var progress: KDCircularProgress!
    
    
    
    
    
    var scorestart = 30.0
    var anglepercent = 3.6
    
    @IBOutlet weak var scoretext: UITextView!
    
    var textviewtext = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   scoretext.text = textviewtext
        
        view.backgroundColor = UIColor.whiteColor()
        
    }
    
    override func viewWillAppear(animated :Bool) {
        super.viewWillAppear(animated)
        
        progressActn()
        //Setting up your progress layer
        animateActn()
        //Animating that progress layer
    }
    
    @IBAction func Animate(sender: AnyObject) {
        animateActn()
    }
    
    func animateActn(){
        progress.angle = Double(scorestart * anglepercent)
        progress.animateFromAngle(0, toAngle: progress.angle, duration: 2) {
            completed in
            if completed {
                print("animation stopped, completed")
            } else {
                print("animation stopped, was interrupted")
            }
        }
        
    }
    func progressActn(){
        
        progress = KDCircularProgress(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        progress.startAngle = -90
        progress.progressThickness = 0.2
        progress.trackThickness = 0.3
        progress.clockwise = true
        progress.gradientRotateSpeed = 10
        progress.roundedCorners = false
        progress.glowMode = .Forward
        progress.glowAmount = 0.9
        progress.setColors(UIColor.yellowColor())
        progress.center = CGPoint(x: view.center.x, y: view.center.y + 25)
        view.addSubview(progress)
        
    }
}