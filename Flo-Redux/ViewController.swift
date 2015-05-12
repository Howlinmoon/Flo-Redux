//
//  ViewController.swift
//  Flo-Redux
//
//  Created by Jim Veneskey on 5/10/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Counter outlets
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
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

}

