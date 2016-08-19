//
//  PhotoView.swift
//  Osmotic Effects App
//
//  Created by Muhammad Usama Mazhar on 18/08/2016.
//  Copyright © 2016 Muhammad Usama Mazhar. All rights reserved.
//

import UIKit

class PhotoView: UIImageView {
    
    var lastTouchTime: NSDate? = nil
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
       
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesMoved(touches, withEvent: event)
//        
//        if let touch = touches.first {
//            let location = touch.locationInView(self)
//            print("x:\(location.x) y:\(location.y)")
//        }

    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
         super.touchesEnded(touches, withEvent: event)
        let currentTime = NSDate()
        if let previousTouchTime = lastTouchTime {
            if currentTime.timeIntervalSinceDate(previousTouchTime) < 0.5 {
                print("Double Tap")
                
                lastTouchTime = nil
            } else {
                lastTouchTime = currentTime
            }
        }//end of first if
        else {
            lastTouchTime = currentTime
            
        }

           }
    
}
