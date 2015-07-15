//
//  ScoreLayer.swift
//  Memoria
//
//  Created by spacehomunculus on 7/14/15.
//  Copyright © 2015 electricbaconstudios. All rights reserved.
//

import Foundation
import UIKit

class ScoreLayer : CALayer {
    var animationDuration : CFTimeInterval?
    @NSManaged var finalValue : NSNumber?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animationDuration = 0
        finalValue = 0
    }
    
    required override init(layer: AnyObject) {
        super.init(layer: layer)
        animationDuration = 0
        finalValue = 0
    }
    
    required override init() {
        super.init()
        animationDuration = 0
        finalValue = 0
    }
    
    override func actionForKey(event: String) -> CAAction? {
        if event == "finalValue" {
            let animation = CABasicAnimation(keyPath: event)
            animation.fromValue = 0.0
            animation.duration = self.animationDuration!
            return animation
        } else {
            return super.actionForKey(event)
        }
    }
    
    override class func needsDisplayForKey(key : String) -> Bool {
        if key == "finalValue" {
            return true
        } else {
            return super.needsDisplayForKey(key)
        }
    }

    
    override func drawInContext(ctx: CGContext) {
        UIGraphicsPushContext(ctx)
        print(self.finalValue!.floatValue)
        CGContextClearRect(ctx, self.frame);
        CGContextSetFillColorWithColor(ctx, UIColor.blueColor().CGColor);
        CGContextSetStrokeColorWithColor(ctx, UIColor.blueColor().CGColor);
        CGContextSetLineWidth(ctx, 44.0);
        
        let rect = CGRect(x: CGFloat(0.0), y: CGFloat(0.0), width: CGFloat(self.finalValue!.floatValue), height: CGFloat(self.finalValue!.floatValue))

        CGContextFillRect(ctx, rect)
        
        
        UIGraphicsPopContext()
    }
    

    
    
    
}
