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
        "EDF", "GDF", "Goum RU", "Carrefour",
        "Paie CASA Jan15", "Amazon", "Pizza DELA..."
    ]
    private let dwarvesMontant = [
        "36,76 euros", "45,87 euros", "5350 euros", "67,87 euros",
        "2275,76 euros", "199 euros", "24,98 euros"
    ]
    private let dwarvesImages = [
        "ico_Vie quotidienne", "ico_Vie quotidienne", "ico_Loisirs", "ico_Vie quotidienne",
        "ico_Salaires", "ico_Loisirs", "ico_Loisirs"
    ]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"

    @IBOutlet weak var myTableView: UITableView!
    
    @IBAction func pushNotifSend(sender: AnyObject) {
        var notification = UILocalNotification()
        
        let myIndexTableView = myTableView.indexPathForSelectedRow()?.row
        let opMontant = dwarvesMontant[myIndexTableView!]
        let opLibelle = dwarves[myIndexTableView!]
        
        NSLog("Index Table : \(myIndexTableView!) - Libellé : \(opLibelle)")

        
        notification.alertBody = "Paiement par CB - \(opLibelle) - \(opMontant)"
        notification.alertTitle = "opé à classer"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.category = "myCategory"
        notification.userInfo = ["Numero Transaction": "44332211" ]
        notification.fireDate = NSDate().dateByAddingTimeInterval(5)
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }
    
    
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

    func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let rowValue = dwarves[indexPath.row]
            let message = "You selected \(rowValue)"
            
            NSLog("Infos Cellule : \(message)")

    }
    
}

