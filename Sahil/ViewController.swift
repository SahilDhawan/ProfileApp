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
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var about: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.transition.sticky = true
        self.transition.showShadow = true
        //self.transition.panThreshold     = 0.4
        //self.transition.transformType    = .TRANSLATEPULL
        self.transition.edge = Edge.BOTTOM
        //self.transition.overlayColor = UIColor.gray
        name.textColor = UIColor.white
        designation.textColor = UIColor.white
        
        let b1 = IonIcons.image(withIcon: ion_social_facebook, iconColor: UIColor.white, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button1.setImage(b1, for: .normal)
        let b2 = IonIcons.image(withIcon: ion_social_twitter, iconColor: UIColor.white, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button2.setImage(b2, for: .normal)
        let b3 = IonIcons.image(withIcon: ion_social_github, iconColor: UIColor.white, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button3.setImage(b3, for: .normal)
        let b4 = IonIcons.image(withIcon: ion_social_linkedin, iconColor: UIColor.white, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button4.setImage(b4, for: .normal)
        let b5 = IonIcons.image(withIcon: ion_social_instagram, iconColor: UIColor.white, iconSize: 50, imageSize: CGSize.init(width: 50, height: 50))
        self.button5.setImage(b5, for: .normal)
        
        let a = IonIcons.image(withIcon: ion_arrow_down_a, iconColor: UIColor.white, iconSize: 30, imageSize: CGSize.init(width: 30, height: 30))
        self.about.setImage(a, for: .normal)

        
        
        name.alpha = 0
        button1.alpha = 0
        button2.alpha = 0
        button3.alpha = 0
        button4.alpha = 0
        button5.alpha = 0
        about.alpha = 0

        designation.alpha = 0
        
        let colorsArray:[UIColor] = [UIColor.black,UIColor.gray,UIColor.black]
        let color = UIColor(gradientStyle: UIGradientStyle.leftToRight, withFrame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), andColors: colorsArray)
        self.view.backgroundColor = color!
//        self.launchView.backgroundColor = color!
    }

    override func viewDidAppear(_ animated: Bool) {
        name.center.y = self.view.frame.size.height/2-100
        designation.center.y = self.view.frame.size.height/2-20

        UIView.animate(withDuration: 3) {
            self.name.alpha = 1;
            self.name.center.y += 100
            self.designation.alpha = 1;
            self.designation.center.y += 50
            
            self.button1.center.x += 60
            self.button2.center.x -= 60
            self.button4.center.x += 60
            self.button5.center.x -= 60

            self.button1.alpha = 1
            self.button2.alpha = 1
            self.button3.alpha = 1
            self.button4.alpha = 1
            self.button5.alpha = 1
            self.about.alpha = 1
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

