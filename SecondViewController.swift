//
//  SecondViewController.swift
//  tippy
//
//  Created by Lin Zhou on 12/7/16.
//  Copyright © 2016 Lin Zhou. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var percentage: Double?
    
    @IBOutlet weak var percent1: UITextField!
    @IBOutlet weak var percent2: UITextField!
    @IBOutlet weak var percent3: UITextField!
    
    public tippercent1=percent1.text
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Setting"
        
        //if let tipPercentage = percentage {
            
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)}
    
    
        
        
}