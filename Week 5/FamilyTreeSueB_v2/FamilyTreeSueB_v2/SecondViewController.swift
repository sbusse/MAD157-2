//
//  SecondViewController.swift
//  FamilyTreeSueB_v2
//
//  Created by student on 3/1/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBAction func backButton(_ sender: Any)
    {
        print("Back button pressed")
        
        self.performSegue(withIdentifier: "Back button segue", sender: self)
    }
    
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

}
