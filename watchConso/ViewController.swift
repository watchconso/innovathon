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
    private let dwarvesMontant = [
        "10 euros", "20 euros", "30 euros", "40 euros",
        "100 euros", "200 euros"
    ]
    private let dwarvesImages = [
        "Habitation", "Habitation", "Loisirs", "Vie quotidienne",
        "Vie quotidienne", "Loisirs"
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
            let image = UIImage(named: dwarvesImages[indexPath.row])
            cell!.imageView!.image = image
            
            
            cell!.detailTextLabel?.text = dwarvesMontant[indexPath.row]
            cell!.textLabel!.text = dwarves[indexPath.row]
            
            
            return cell!
    }

    
}

