//
//  ViewController.swift
//  imageSaving
//
//  Created by student on 4/6/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        //Encoding
        let image = UIImage(named: "rituals.jpg")
        let imageData: NSData = image!.pngData()! as NSData
        
        UserDefaults.standard.set(imageData, forKey: "savedImage")

 
        //Decode
        let data = UserDefaults.standard.object(forKey: "savedImage") as! NSData
        myImageView.image = UIImage(data: data as Data)
        
    }


}

