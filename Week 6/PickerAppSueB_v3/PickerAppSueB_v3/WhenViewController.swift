//
//  WhenViewController.swift
//  PickerAppSueB_v3
//
//  Created by student on 3/6/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class WhenViewController: UIViewController {


    @IBAction func onButtonPressed(_ sender: Any)
    {
    let date = datePicker.date
        let message = "Your vacation starts \(date)"
        let alert = UIAlertController(
            title: "Oh I bet you can't wait to go!!",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(title: "That's so true!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
            override func viewDidLoad() {
            super.viewDidLoad()
                
            // Do any additional setup after loading the view.
                
                let date = NSDate()
                datePicker.setDate(date as Date, animated: false)
        }
    
        
}
