//
//  ViewController.swift
//  FamilyTreeSueB_v2
//
//  Created by student on 2/24/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

    let family = "Our growing family!"

class ViewController: UIViewController {


    @IBAction func nextViewButtonPressed(_ sender: Any)
    {
        print("Button pressed works")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("View has loded:)")
    }


}

