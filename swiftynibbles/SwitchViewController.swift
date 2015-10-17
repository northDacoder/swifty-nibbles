//
//  SwitchViewController.swift
//  swiftynibbles
//
//  Created by John.C.Ryan2 on 10/16/15.
//  Copyright © 2015 northdacoder. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchStatus: UILabel!
    
    var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch = UISwitch(frame: CGRect(x: 150, y: 200, width: 0, height: 0))
        mySwitch.addTarget(self, action: "mySwitchDidChange:", forControlEvents: UIControlEvents.ValueChanged)
        mySwitch.center = view.center
        
        changeMySwitchColors()
        
        view.addSubview(mySwitch)
    }

    @IBAction func mySwitchDidChange(sender: UISwitch) {
        print("sender is = \(sender)")
        
        if mySwitch.on {
            switchStatus.text = "ON"
            print("The switch is on")
        } else {
            switchStatus.text = "OFF"
            print("The switch is off")
        }
    }
    
    func changeMySwitchColors() {
        mySwitch.tintColor = UIColor.yellowColor()
        mySwitch.onTintColor = UIColor.greenColor()
        mySwitch.thumbTintColor = UIColor.blueColor()
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
