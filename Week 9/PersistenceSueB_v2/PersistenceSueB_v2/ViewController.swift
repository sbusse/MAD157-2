//
//  ViewController.swift
//  PersistenceSueB_v2
//
//  Created by student on 4/6/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBAction func action(_ sender: Any)
    {
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "myName")
        input.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        if let x = UserDefaults.standard.object(forKey: "myName") as? String
        {
            output.text = x
        }
    }
    
    
}



