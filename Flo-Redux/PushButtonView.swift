//
//  PushButtonView.swift
//  Flo-Redux
//
//  Created by jim Veneskey on 5/11/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class PushButtonView: UIButton {

    override func drawRect(rect: CGRect) {
        // Drawing code
        var path = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }

}
