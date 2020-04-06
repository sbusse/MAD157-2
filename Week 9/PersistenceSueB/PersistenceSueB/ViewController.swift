//
//  ViewController.swift
//  PersistenceSueB
//
//  Created by student on 3/31/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate static let rootKey = "rootKey"
    @IBOutlet var lineFields:[UITextField]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fileURL = self.dataFileURL()
        if (FileManager.default.fileExists(atPath: fileURL.path!)) {
            if let array = NSArray(contentsOf: fileURL as URL) as? [String] {
                for i in 0..<array.count {
                    lineFields[i].text = array[i]
                }
            }
        }
    
        let app = UIApplication.shared
            NotificationCenter.default.addObserver(self,
        selector: #selector(self.applicationWillResignActive(notification:)),
        name: Notification.Name.UIApplication.willResignActiveNotification, object: app)
    }
    
    @objc func applicationWillResignActive(notification:NSNotification) {
        let fileURL = self.dataFileURL()
        let array = (self.lineFields as NSArray).value(forKey: "text") as! NSArray
        array.write(to: fileURL as URL, atomically: true)
    }
    
   
    
    func dataFileURL() -> NSURL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        var url:NSURL?
        url = URL(fileURLWithPath: "") as NSURL
        //create a blank path
        do {
            try url = urls.first!.appendingPathComponent("data.plist") as NSURL
        }
        catch {
            print("Error is \(error)")
        }
        return url!
    }


}

