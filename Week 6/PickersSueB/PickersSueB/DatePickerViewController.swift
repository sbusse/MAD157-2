//
//  DatePickerViewController.swift
//  PickersSueB
//
//  Created by student on 2/26/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
            title: "Date and Time Selected",
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
