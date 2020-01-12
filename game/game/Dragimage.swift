//
//  Dragimage.swift
//  game
//
//  Created by fi17aac on 12/01/2020.
//  Copyright © 2020 fi17aac. All rights reserved.
//

import UIKit

class Dragimage: UIImageView {

     var startLocation: CGPoint?
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            startLocation = touches.first?.location(in: self)
        }
        
        
        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            let currentLocation = touches.first?.location(in: self)
            
            let dx = currentLocation!.x - startLocation!.x
            let dy = currentLocation!.y - startLocation!.y
            var newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
            
            let halfx = self.bounds.midX
            newCenter.x = max(halfx, newCenter.x)
            newCenter.x = min(self.superview!.bounds.width - halfx, newCenter.x)
            
            let halfy = self.bounds.midY
            newCenter.y = max(halfy, newCenter.y)
            newCenter.y = min(self.superview!.bounds.height - halfy, newCenter.y)
            
            
            self.center = newCenter
        }
        
        

    }
