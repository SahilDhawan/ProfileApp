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
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var designation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.transition.sticky = true
        self.transition.showShadow = true
        self.transition.panThreshold     = 0.4
        self.transition.transformType    = .TRANSLATEPULL
        self.transition.edge = Edge.BOTTOM
        self.transition.overlayColor = UIColor.gray
        name.textColor = UIColor.white
        designation.textColor = UIColor.white
        
        let b1 = IonIcons.image(withIcon: ion_social_facebook_outline, iconColor: UIColor.gray, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button1.imageView?.image = b1
        
        
        name.alpha = 0
        designation.alpha = 0
        
        let colorsArray:[UIColor] = [UIColor.black,UIColor.gray,UIColor.black]
        let color = UIColor(gradientStyle: UIGradientStyle.leftToRight, withFrame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), andColors: colorsArray)
        self.view.backgroundColor = color!
    }

    override func viewDidAppear(_ animated: Bool) {
        name.center.y = self.view.frame.size.height/2-100
        designation.center.y = self.view.frame.size.height/2-20

        UIView.animate(withDuration: 3) {
            self.name.alpha = 1;
            self.name.center.y += 100
            self.designation.alpha = 1;
            self.designation.center.y += 50
        }
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

