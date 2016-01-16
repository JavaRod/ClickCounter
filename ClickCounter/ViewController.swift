//
//  ViewController.swift
//  ClickCounter
//
//  Created by Rodrick Musser on 1/16/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150,250,60,60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementalCount", forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: "changeColor", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var decButton = UIButton()
        decButton.frame = CGRectMake(150,350,60,60)
        decButton.setTitle("Click", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: "decrementalCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementalCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func changeColor() {
     
        if (self.view.backgroundColor == UIColor.whiteColor()) {
            self.view.backgroundColor = UIColor.redColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
        }
        
    }
    
    func decrementalCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

}

