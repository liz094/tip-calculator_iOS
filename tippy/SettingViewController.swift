//
//  SettingViewController.swift
//  tippy
//
//  Created by Lin Zhou on 12/7/16.
//  Copyright © 2016 Lin Zhou. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tip_choices: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadDefault(){
    let defaults = NSUserDefaults.standardUserDefaults()
    let tipValue = defaults.doubleForKey("default_tip_percentage")
    tip_choices.selectedSegmentIndex = (Int)((tipValue-0.15)*20)
    }
    

    @IBAction func setDefaultTip(sender: AnyObject) {
    let tipPercentages = [0.15, 0.2, 0.25]
    
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setDouble(tipPercentages[tip_choices.selectedSegmentIndex], forKey: "default_tip_percentage")
    defaults.synchronize()
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
