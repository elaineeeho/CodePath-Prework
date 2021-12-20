//
//  ViewController.swift
//  pre-work
//
//  Created by elaine ho on 12/16/21.
//  Copyright © 2021 elaine ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    var counter = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title  = "Tip Calculator"
        
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billAmountTextField.becomeFirstResponder()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func colorChangeButton(_ sender: UIButton) {
        if counter == 0 {
            view.backgroundColor = UIColor.purple
        }
        else if counter == 1 {
            view.backgroundColor = UIColor.blue
            counter = 0
            return
        }
        counter += 1
    }
    }

