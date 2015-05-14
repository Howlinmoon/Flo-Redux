//
//  ViewController.swift
//  Flo-Redux
//
//  Created by Jim Veneskey on 5/10/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isGraphViewShowing = false
    //Counter outlets
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    // outlets for the new views added in part 2
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter++
            println("Add button pressed")
        } else {
            if counterView.counter > 0 {
                println("Minus button pressed")
                counterView.counter--
            }
        }
        counterLabel.text = String(counterView.counter)
    }
    
    @IBAction func counterViewTap(guesture: UITapGestureRecognizer?) {
        if (isGraphViewShowing) {
            
            // Graph is showing - so hide it
            UIView.transitionFromView(GraphView, toView: counterView, duration: 1.0, options: UIViewAnimationOptions.TransitionFlipFromLeft | UIViewAnimationOptions.ShowHideTransitionViews, completion: nil)
        }
    }

}

