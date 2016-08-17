//
//  ViewControllerHome.swift
//  KDCircularProgressExample
//
//  Created by Joseph Mulreany on 16/08/2016.
//  Copyright © 2016 Kaan Dedeoglu. All rights reserved.
//

import UIKit
import Foundation

class ViewControllerHome: UIViewController {

   
    
    @IBOutlet weak var scorelbl: UITextView!
    @IBOutlet weak var scorebutton: UIButton!
    
    var scorestart = 1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func counter(sender: AnyObject) {
        scorelbl.text = NSString(format: "%i", scorestart) as String
        scorestart += 1
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
    }
    
    }
        
    