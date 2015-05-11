//
//  PushButtonView.swift
//  Flo-Redux
//
//  Created by jim Veneskey on 5/11/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

@IBDesignable

class PushButtonView: UIButton {
    @IBInspectable var fillColor: UIColor = UIColor.blueColor()
    @IBInspectable var isAddButton: Bool = true
    
    override func drawRect(rect: CGRect) {
        var path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
        // Drawing the plus sign (+)
        let plusHeight: CGFloat = 3.0
        //setting the width to 60% of either the screen
        // width or height - which ever is less.
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        // Create the path
        var plusPath = UIBezierPath()
        
        // set the line width to the height of the stroke
        plusPath.lineWidth = plusHeight
        
        // move the initial point of the path
        // to the start of the horizontal stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 - plusWidth/2 + 0.5,
            y:bounds.height/2))
        
        // Add a point to the path at the end of the stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2 + plusWidth/2 + 0.5,
            y:bounds.height/2))
        
        if isAddButton {
            println("Drawing a + button")
            // Trying to draw the vertical line of the plus
            // move the initial point of the path
            // to the start of the vertical stroke
            plusPath.moveToPoint(CGPoint(
                x:bounds.width/2,
                y:bounds.height/2 - plusWidth/2 + 0.5))
            
            // Add a point to the path at the end of the stroke
            plusPath.addLineToPoint(CGPoint(
                x:bounds.width/2,
                y:bounds.height/2 + plusWidth/2 + 0.5))
        } else {
            println("Drawing a - button")
        }
        
        // set the stroke color
        UIColor.whiteColor().setStroke()
        // Draw the stroke
        plusPath.stroke()
    }
    
}
