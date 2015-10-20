//
//  SliderViewController.swift
//  swiftynibbles
//
//  Created by John.C.Ryan2 on 10/17/15.
//  Copyright © 2015 northdacoder. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    
    @IBOutlet weak var currentValueLabel: UILabel!
    
    var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValueLabel.text = "0"
        currentValueLabel.center = view.center

        slider = UISlider(frame: CGRectMake(100,100,200,23))
        slider.center = view.center
        
        slider.minimumValue = 0
        slider.maximumValue = 100
    
        slider.value = slider.maximumValue / 2

        view.addSubview(slider);

        slider.addTarget(self, action: "sliderValueChanged:",  forControlEvents: UIControlEvents.ValueChanged)
        
        slider.continuous = false
        
        changeThumbImage()
        
    }
    
    func sliderValueChanged(sender: UISlider) {
        currentValueLabel.text = "\(sender.value)"
    }

    
    func changeThumbImage() {
        slider.setThumbImage(UIImage(named: "default"), forState: UIControlState.Normal)
        slider.setThumbImage(UIImage(named: "default"), forState: UIControlState.Highlighted)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
