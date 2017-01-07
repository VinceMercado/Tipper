//
//  ViewController.swift
//  Tipper
//
//  Created by Vince  on 12/29/16.
//  Copyright © 2016 Vince Mercado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
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
       
        let tipPercentages = [0.18,0.2,0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let bill = Double(billField.text!);
        let tip = bill! * tipPercentage
        let total = bill! + tip
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

