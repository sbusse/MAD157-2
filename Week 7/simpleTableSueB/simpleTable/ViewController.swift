//
//  ViewController.swift
//  simpleTable
//
//  Created by student on 3/7/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    private let dwarves = [
    "Sleepy", "Sneezy", "Bashful", "Happy", "Doc", "Grumpy", "Dopey", "Nori", "Ori", "Balin", "Dwalin", "Fili", "oin", "Gloin", "Bidur", "Bofur", "Bombur"]
    
    let simpleTableIndentifier = SimpleTableIdentifier

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:-
    //MARK: Table View Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:
        Int) -> Int {
        return dwarves.count
    }
    
    func tableView(_tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIndentifier)
        if (cell == nil) {
            cell = UITableViewCell(
                style: UITableViewCellStyle.default,
                reuseIdentifier: simpleTableIndentifier)
        }
        
        let image = UIImage(named: "star")
        cell?.imageView?.image = image
        let highlightedImage = UIImage(named: "star2")
        
            cell?.imageView?.highlightedImage =
                highlightedImage
        
        cell?.textLabel?.text =
            dwarves[indexPath.row]
        return cell!
    }


}

