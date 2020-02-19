//
//  ViewController.swift
//  BuildACarSueB_v4
//
//  Created by student on 2/18/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchLabel: UILabel!
    
    
    @IBAction func `switch`(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            switchLabel.text = "YES!  I want to buy a car!!"
        }
        else
        {
           switchLabel.text = "NO! I don't want to buy a car!!"
        }
    }
    
    @IBOutlet weak var colorView: UIImageView!

    
    @IBOutlet weak var budgetLabel: UILabel!
    
    
    @IBAction func budgetSlider(_ sender: UISlider)
    {
        budgetLabel.text = String(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func colorSegment(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            let black: UIImage = UIImage(named: "impala-black.png")!
            colorView.image = black
            
        } else if sender.selectedSegmentIndex == 1
        {
            let red: UIImage = UIImage(named: "impala-red.png")!
            colorView.image = red
            
        } else if sender.selectedSegmentIndex == 2
        {
            let white: UIImage = UIImage(named: "impala-white.png")!
            colorView.image = white
        }
    

}

}
