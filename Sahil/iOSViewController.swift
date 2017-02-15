//
//  iOSViewController.swift
//  Sahil
//
//  Created by Sahil Dhawan on 07/02/17.
//  Copyright © 2017 Sahil Dhawan. All rights reserved.
//

import UIKit
import ElasticTransitionObjC
import ionicons


class iOSViewController: UIViewController {
    let transition = ElasticTransition()
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var aboutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.isScrollEnabled = true
        self.transition.sticky = true
        self.transition.showShadow = true
        self.transition.edge = Edge.TOP
        let a1 = IonIcons.image(withIcon: ion_arrow_up_a, iconColor: UIColor.gray, iconSize: 30, imageSize: CGSize.init(width: 30, height: 30))
        self.aboutButton.setImage(a1, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollView.contentSize = CGSize.init(width: self.view.frame.size.width, height: 1300)
    }

    @IBAction func course1(_ sender: AnyObject) {
        let url = URL(string:"https://www.coursera.org/account/accomplishments/verify/9XW63UZWSADN")
        UIApplication.shared.open(url!,options:[:],completionHandler:nil)
    }
    
    @IBAction func course2(_ sender: AnyObject) {
        let url = URL(string:"https://www.coursera.org/account/accomplishments/verify/9XW63UZWSADN")
        UIApplication.shared.open(url!,options:[:],completionHandler:nil)
    }
     @IBAction func course3(_ sender: AnyObject) {
        let url = URL(string:"https://www.coursera.org/account/accomplishments/verify/9XW63UZWSADN")
        UIApplication.shared.open(url!,options:[:],completionHandler:nil)
     }
     @IBAction func course4(_ sender: AnyObject) {
        let url = URL(string:"https://www.coursera.org/account/accomplishments/verify/9XW63UZWSADN")
        UIApplication.shared.open(url!,options:[:],completionHandler:nil)
     }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.transitioningDelegate = self.transition
        segue.destination.modalPresentationStyle = UIModalPresentationStyle.custom
    }

}
