//
//  ScoreView.swift
//  Memoria
//
//  Created by spacehomunculus on 7/14/15.
//  Copyright © 2015 electricbaconstudios. All rights reserved.
//

import Foundation
import UIKit

class ScoreView : UIView {

    override class func layerClass() -> AnyClass {
        return ScoreLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.delegate = self
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.delegate = self
    }
    
}