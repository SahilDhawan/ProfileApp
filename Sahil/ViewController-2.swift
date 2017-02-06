//
//  ViewController-2.swift
//  Sahil
//
//  Created by Sahil Dhawan on 26/01/17.
//  Copyright © 2017 Sahil Dhawan. All rights reserved.
//

import UIKit
import ElasticTransitionObjC
import ionicons

class ViewController_2: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var journey: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let transition = ElasticTransition()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transition.sticky = true
        self.transition.showShadow = true
        //self.transition.panThreshold     = 0.4
        //self.transition.transformType    = .TRANSLATEPUSH
        self.transition.edge = Edge.TOP
        //self.transition.overlayColor = UIColor.gray
        // Do any additional setup after loading the view.
        self.imageView.clipsToBounds = true
        self.imageView.layer.cornerRadius = 75
        self.imageView.layer.borderWidth = 5
        self.imageView.layer.borderColor = UIColor.gray.cgColor
        self.imageView.layer.shadowColor = UIColor.white.cgColor
        self.imageView.layer.shadowRadius = 2
        
        let a1 = IonIcons.image(withIcon: ion_arrow_up_a, iconColor: UIColor.gray, iconSize: 30, imageSize: CGSize.init(width: 30, height: 30))
        self.home.setImage(a1, for: .normal)
        
        let a2 = IonIcons.image(withIcon: ion_arrow_down_a, iconColor: UIColor.gray, iconSize: 30, imageSize: CGSize.init(width: 30, height: 30))
        self.journey.setImage(a2, for: .normal)

         textView.isEditable = false
        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize.init(width: self.view.frame.width, height: self.view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.transitioningDelegate = self.transition
        segue.destination.modalPresentationStyle = UIModalPresentationStyle.custom
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
