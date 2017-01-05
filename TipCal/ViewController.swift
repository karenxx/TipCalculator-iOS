//
//  ViewController.swift
//  TipCal
//
//  Created by XIXIAN GUO on 12/29/16.
//  Copyright © 2016 XXKaren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billVal: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipChoice: UISegmentedControl!
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var youpayField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentage = [0.15, 0.20, 0.25]
        
        let bill = Double(billVal.text!) ?? 0  //return 0 if nill
        let tip = bill * tipPercentage[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let number = Double(numberField.text!) ?? 1
        
        let onePay = Double(total / number)
        youpayField.text = "Each pay " + String(format: "$%.2f", onePay)

    }

    @IBAction func calEachPay(_ sender: AnyObject) {
        let number = Double(numberField.text!) ?? 1
        
        let tipPercentage = [0.15, 0.20, 0.25]
        let bill = Double(billVal.text!) ?? 0
        let tip = bill * tipPercentage[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        
        if(number == 0){
            youpayField.text = String(format: "$%.2f", 0.00)
        }
        else {
            let onePay = Double(total / number)
            youpayField.text = "Each pay " + String(format: "$%.2f", onePay)
        }
    }
}

