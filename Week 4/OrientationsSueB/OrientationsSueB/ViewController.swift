//
//  ViewController.swift
//  OrientationsSueB
//
//  Created by student on 2/12/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
        {
        return UIInterfaceOrientationMask(rawValue: (UIInterfaceOrientationMask.portrait.rawValue
         | UIInterfaceOrientationMask.landscape.rawValue))
    }
    

}


