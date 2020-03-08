//
//  DependentComponentPickerViewController.swift
//  PickersSueB
//
//  Created by student on 2/26/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class DependentComponentPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    
    private let stateComponent = 0
    private let zipComponent = 1
    private var stateZips:[String : [String]]!
    private var states:[String]!
    private var zips:[String]!
    
    
    @IBOutlet weak var dependentPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bundle = Bundle.main
        let plistURL = bundle.url(forResource: "statedictionary",
                                             withExtension: "plist")
        
        
        //** How to Solve: "Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value" according to (https://learnappmaking.com/found-nil-while-unwrapping-optional-value/)  Not sure how to implement it though ??
        
//        let username:String? = nil
//
//        if username != nil {
//            let message = "Welcome, " + username!
//            print(message)
//        }
        
        stateZips = NSDictionary.init(contentsOf:  (plistURL)!) as? [String : [String]]
        let allStates = stateZips.keys
        states = allStates.sorted()
        let selectedState = states[0]
        zips = stateZips[selectedState]

        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int)
    {
        if component == stateComponent
        {
            let selectedState = states[row]
            zips = stateZips[selectedState]
            dependentPicker.reloadComponent(zipComponent)
            dependentPicker.selectRow(0, inComponent: zipComponent, animated: true)
        }
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
        let stateRow =
            dependentPicker.selectedRow(inComponent: stateComponent)
        let zipRow =
            dependentPicker.selectedRow(inComponent: zipComponent)
        let state = states[stateRow]
        let zip = zips[zipRow]
        
        let title = "You selected zip code \(zip)"
        let message = "\(zip) is in \(state)"
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "OK",
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
        if component == stateComponent
        {
            return states.count
        } else {
            return zips.count
        }
    }
    
    //MARK:-
    //MARK: Picker Delegate Methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:
        Int, forComponent component: Int) -> String?
    {
        if component == stateComponent
        {
            return states[row]
        } else {
            return zips[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
    {
            let pickerWidth = pickerView.bounds.size.width
        if component == zipComponent
        {
            return pickerWidth/3
        } else {
            return 2 * pickerWidth/3
        }
    }
    
}
