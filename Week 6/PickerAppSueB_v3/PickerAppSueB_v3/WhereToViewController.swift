//
//  WhereToViewController.swift
//  PickerAppSueB_v3
//
//  Created by student on 3/6/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class WhereToViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    
    @IBOutlet weak var WhereToPicker: UIPickerView!
    
    private let modeComponent = 0
    private let destinationComponent = 1
    
    private let destinationTypes = [
        "France", "Italy", "England", "United States", "Mexico"]
    private let modeTypes = [
    "Train", "Plane", "Automobile", "Scooter", "Walk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let destinationRow =
            WhereToPicker.selectedRow(inComponent: destinationComponent)
        let modeRow =
            WhereToPicker.selectedRow(inComponent: modeComponent)
        let destination = destinationTypes[destinationRow]
        let mode = modeTypes[modeRow]
        let message = "Confirm your trip to \(destination) will be be on a \(mode)."
        let alert = UIAlertController(
            title: "Have a great trip!!!!!",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Later!",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // MARK:-
    //MARK: Picker Data Source Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == modeComponent
        {
            return modeTypes.count
        } else {
            return destinationTypes.count
        }
    }
    
    //MARK:-
    //MARK: Picker Delegate Methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:
        Int, forComponent component: Int) -> String?
    {
        if component == modeComponent
        {
            return modeTypes[row]
        } else {
            return destinationTypes[row]
        }
    }


}
