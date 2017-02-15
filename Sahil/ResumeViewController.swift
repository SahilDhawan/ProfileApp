//
//  ResumeViewController.swift
//  Sahil
//
//  Created by Sahil Dhawan on 13/02/17.
//  Copyright © 2017 Sahil Dhawan. All rights reserved.
//

import UIKit
import ionicons

class ResumeViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let link = "https://drive.google.com/file/d/0B83ae3lANmZ_N1JLanF5OE41Qmc/view?usp=sharing"
        let url = Bundle.main.url(forResource: "Resume_latest", withExtension: ".pdf")
        let requestObject = NSURLRequest.init(url: url!)
        webView.loadRequest(requestObject as URLRequest)
        let a1 = IonIcons.image(withIcon: ion_arrow_up_a, iconColor: UIColor.gray, iconSize: 30, imageSize: CGSize.init(width: 30, height: 30))
        self.aboutButton.setImage(a1, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
