//
//  ViewController.swift
//  swiftynibbles
//
//  Created by John.C.Ryan2 on 10/16/15.
//  Copyright © 2015 northdacoder. All rights reserved.
//

import UIKit

class BlurEffectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        
        blurView.frame.size = CGSize(width: 360, height: 200)
        blurView.center = view.center
        
        view.addSubview(blurView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

