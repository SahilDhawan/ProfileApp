//
//  ViewController.swift
//  Sahil
//
//  Created by Sahil Dhawan on 25/01/17.
//  Copyright © 2017 Sahil Dhawan. All rights reserved.
//

import UIKit
import ionicons
import ElasticTransitionObjC
import ChameleonFramework



class ViewController: UIViewController {
    
    let transition = ElasticTransition()
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.transition.sticky = true
        self.transition.showShadow = true
        self.transition.panThreshold     = 0.4
        self.transition.transformType    = .TRANSLATEPULL
        self.transition.edge = Edge.BOTTOM
        self.transition.overlayColor = UIColor.gray
        
        let colorsArray:[UIColor] = [UIColor.black,UIColor.gray,UIColor.black]
        let color = UIColor(gradientStyle: UIGradientStyle.leftToRight, withFrame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), andColors: colorsArray)
        self.view.backgroundColor = color!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.transitioningDelegate = self.transition
        segue.destination.modalPresentationStyle = UIModalPresentationStyle.custom
    }

}

