//
//  CounterView.swift
//  Flo-Redux
//
//  Created by jim Veneskey on 5/11/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

let NoOfGlasses = 8
let π:CGFloat = CGFloat(M_PI)


@IBDesignable
class CounterView: UIView {

    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blueColor()
    @IBInspectable var counterColor: UIColor = UIColor.orangeColor()
    
    override func drawRect(rect: CGRect) {
        // Drawing code
    }

}
