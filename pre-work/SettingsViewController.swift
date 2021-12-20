//
//  SettingsViewController.swift
//  pre-work
//
//  Created by elaine ho on 12/16/21.
//  Copyright © 2021 elaine ho. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var currencyLabel: UITextField!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func colorChangeButton(_ sender: UIButton) {
        
        if counter == 0 {
            view.backgroundColor = UIColor.blue
        }
        else if counter == 1 {
            view.backgroundColor = UIColor.green
            counter = 0
            return
        }
        counter += 1
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
