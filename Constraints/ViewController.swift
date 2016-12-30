//
//  ViewController.swift
//  Constraints
//
//  Created by Gabriel Theodoropoulos on 04/12/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // can do this programmatically using Spring...just set views  etc to designable...
    var containerView1: UIView!
    
    var containerView2: UIView!
    
    var containerView3: UIView!
    
    var label1: UILabel!
    
    var label2: UILabel!
    
    var button1: UIButton!
    
    var button2: UIButton!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // simpleView1()
        
//        simpleView2()
        
        complexView1()
        
//        complexView2()
        
//        vflExample()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func simpleView1() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        
        self.view.addSubview(myView)
        
        let leading = NSLayoutConstraint(item: myView,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: self.view,
                                         attribute: .leading,
                                         multiplier: 1.0,
                                         constant: 50.0)
        let trailing = NSLayoutConstraint(item: myView,
                                          attribute: .trailing,
                                          relatedBy: .equal,
                                          toItem: self.view,
                                          attribute: .trailing,
                                          multiplier: 1.0,
                                          constant: -50.0)
        
        let top = NSLayoutConstraint(item: myView,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: self.view,
                                     attribute: .top,
                                     multiplier: 1.0,
                                     constant: 100.0)
        
        let height = NSLayoutConstraint(item: myView,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1.0,
                                        constant: 120.0)
        
        let bottom = NSLayoutConstraint(item: myView,
                                        attribute: .bottom,
                                        relatedBy: .equal,
                                        toItem: self.view,
                                        attribute: .bottomMargin,
                                        multiplier: 1.0,
                                        constant: -250.0)
        
        self.view.addConstraint(leading)
        self.view.addConstraint(trailing)
        self.view.addConstraint(top)
      //  self.view.addConstraint(height)
        self.view.addConstraint(bottom)
        // add the constraints
        NSLayoutConstraint.activate([leading, trailing, top, bottom])
        // tell IOS not to create contraints on its own
        myView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
   // when you define an object or view...add contraints to it...set in viewWillappear..run the instance
    func simpleView2() {
        let myView  = UIView()
        myView.backgroundColor = UIColor.black
        self.view.addSubview(myView)

        myView.translatesAutoresizingMaskIntoConstraints = false
        
        let centerHorizontally = NSLayoutConstraint(item: myView,
                                                    attribute: .centerX,
                                                    relatedBy: .equal,
                                                    toItem: self.view,
                                                    attribute: .centerX,
                                                    multiplier: 1.0,
                                                    constant: 0.0)
        
        let centerVertically = NSLayoutConstraint(item: myView,
                                                  attribute: .centerY,
                                                  relatedBy: .equal,
                                                  toItem: self.view,
                                                  attribute: .centerY,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        NSLayoutConstraint.activate([centerHorizontally, centerVertically])
        
        NSLayoutConstraint(item: myView,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1.0,
                           constant: 120.0).isActive = true
        
        NSLayoutConstraint(item: myView,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1.0,
                           constant: 70.0).isActive = true
    }
    
    
    func complexView1() {
        containerView1 = UIView()
        containerView1.backgroundColor = UIColor.black
        self.view.addSubview(containerView1)
        containerView1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: containerView1, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 80.0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0).isActive = true
        
        let button1 = UIButton(type: .custom)
        button1.backgroundColor = UIColor.orange
        button1.setTitle("@1x", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        containerView1.addSubview(button1)
        
        let centerHorizontally = NSLayoutConstraint(item: button1, attribute: .centerX, relatedBy: .equal, toItem: containerView1, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        //make button 10 pts from top of container view
        let top = NSLayoutConstraint(item: button1, attribute: .top, relatedBy: .equal, toItem: containerView1, attribute: .top, multiplier: 1.0, constant: 10.0)
        
        let width = NSLayoutConstraint(item: button1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 45.0)
        let height = NSLayoutConstraint(item: button1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 22.0)
        
        containerView1.addConstraint(centerHorizontally)
        containerView1.addConstraint(top)
        containerView1.addConstraint(width)
        containerView1.addConstraint(height)
        
        let button2 = UIButton(type: .custom)
        button2.backgroundColor = UIColor.orange
        button2.setTitle("@2x", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        containerView1.addSubview(button2)
        
        NSLayoutConstraint(item: button2, attribute: .centerX, relatedBy: .equal, toItem: button1, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive = true
    }
    
    
    func complexView2() {
        
    }
    
    
    func vflExample() {
        
    }
}

