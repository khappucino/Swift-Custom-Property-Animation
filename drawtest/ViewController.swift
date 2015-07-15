//
//  ViewController.swift
//  drawtest
//
//  Created by spacehomunculus on 7/14/15.
//  Copyright © 2015 electricbaconstudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testView : ScoreView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.testView = ScoreView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        
        self.view.addSubview(self.testView!)
        
        let customLayer = self.testView!.layer as! ScoreLayer
        customLayer.animationDuration = 10.0
        customLayer.finalValue = 300

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

