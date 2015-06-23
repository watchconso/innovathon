//
//  ViewController.swift
//  watchConso
//
//  Created by Didier DEDE on 23/06/2015.
//  Copyright (c) 2015 ca.sa.innovathon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    private let dwarves = [
        "EDF", "GDF", "Virement Papa", "Carrefour",
        "SFR", "Amazon"
    ]
    let simpleTableIdentifier = "SimpleTableIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return dwarves.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier(
                simpleTableIdentifier) as? UITableViewCell
            if (cell == nil) {
                cell = UITableViewCell(
                    style: UITableViewCellStyle.Value1,
                    reuseIdentifier: simpleTableIdentifier)
            }
            let image = UIImage(named: "logo-vac")
            cell!.imageView!.image = image
        
            cell!.detailTextLabel?.text = "125,75 euros"

            cell!.textLabel!.text = dwarves[indexPath.row]
            
            
            return cell!
    }

    
}

