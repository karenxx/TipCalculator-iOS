//
//  SettingsViewController.swift
//  TipCal
//
//  Created by XIXIAN GUO on 1/4/17.
//  Copyright © 2017 XXKaren. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var setPercentageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percent = defaults.integer(forKey: "tip_percentage")
        
        setPercentageControl.selectedSegmentIndex = percent
    }
    
    @IBAction func onSetPercent(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let percent_index = setPercentageControl.selectedSegmentIndex
        
        defaults.set(percent_index, forKey: "tip_percentage")
        defaults.synchronize()
    }
    
}
