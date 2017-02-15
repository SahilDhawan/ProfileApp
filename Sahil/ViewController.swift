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

var cond = true

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
        self.transition.sticky = true
        self.transition.showShadow = true
        self.transition.edge = Edge.BOTTOM
        self.transition.overlayColor = UIColor.gray
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
        imageView.alpha = 0

        designation.alpha = 0
        
       
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.black.cgColor,UIColor.darkGray.cgColor,UIColor.black.cgColor]
        gradient.frame = self.view.bounds
        gradient.startPoint = CGPoint.init(x: 0,y: 1)
        gradient.endPoint = CGPoint.init(x: 1, y: 1)
        self.view.layer.insertSublayer(gradient, at: 0)
        
        
        if cond == false
        {
            name.frame = CGRect.init(x: name.frame.minX, y: 80, width: name.frame.width, height: name.frame.height)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        if cond == true
        {
            UIView.animate(withDuration: 3) {
                self.name.alpha = 1;
                self.designation.alpha = 1;
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
                self.imageView.alpha = 1

            }
        }
        if cond == false
        {
            
                name.frame = CGRect.init(x: name.frame.minX, y: 80, width: name.frame.width, height: name.frame.height)
            

                        UIView.animate(withDuration: 3, animations: {
                self.designation.alpha = 1
                self.name.alpha = 1
                self.button1.alpha = 1
                self.button2.alpha = 1
                self.button3.alpha = 1
                self.button4.alpha = 1
                self.button5.alpha = 1
                self.about.alpha = 1
                self.name.center.y = 280
                self.designation.center.y = 310
                self.imageView.alpha = 1

            })
                    }
        cond = false
}
    override func viewWillAppear(_ animated: Bool) {
        if cond == false
        {
            name.frame = CGRect.init(x: name.frame.minX, y: 80, width: name.frame.width, height: name.frame.height)
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

    @IBAction func button5pressed(_ sender: AnyObject) {
        //instagram
        let address = URL(string: "https://www.instagram.com/sahild96/")
        UIApplication.shared.open(address!,options: [:],completionHandler: nil)
    }
    @IBAction func button4pressed(_ sender: AnyObject) {
        //linkedin
        let address = URL(string:"https://www.linkedin.com/in/sahil-dhawan-12807098/")
        UIApplication.shared.open(address!,options: [:],completionHandler: nil)
    }
    @IBAction func button1pressed(_ sender: AnyObject) {
        
        let address =  URL(string:"https://www.facebook.com/sahil.dhawan.98")
        UIApplication.shared.open(address!,options: [:],completionHandler: nil)
    }
    @IBAction func button2pressed(_ sender: AnyObject) {
        //twitter
        let address = URL(string:"https://twitter.com/sahild_6")
        UIApplication.shared.open(address!,options: [:],completionHandler: nil)
    }
    @IBAction func button3pressed(_ sender: AnyObject) {
        //Github
      let address = URL(string:"https://github.com/SahilDhawan")
      UIApplication.shared.open(address!,options: [:],completionHandler: nil)
    }
}

