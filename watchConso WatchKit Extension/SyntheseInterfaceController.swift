//
//  SyntheseInterfaceController.swift
//  watchConso
//
//  Created by dsiam on 23/06/2015.
//  Copyright (c) 2015 ca.sa.innovathon. All rights reserved.
//

import WatchKit
import Foundation


class SyntheseInterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        table.setNumberOfRows(7, withRowType: "SyntheseRow")
        if let row = self.table.rowControllerAtIndex(0) as? SyntheseRow{
            row.label.setText("- 230,65 €")
            row.icone.setImageNamed("ico_Vie quotidienne")
        }
        if let row = self.table.rowControllerAtIndex(1) as? SyntheseRow{
            row.label.setText("0,00 €")
            row.icone.setImageNamed("ico_Sante")
        }
        if let row = self.table.rowControllerAtIndex(2) as? SyntheseRow{
            row.label.setText("- 45,67 €")
            row.icone.setImageNamed("ico_Restaurant")
        }
        if let row = self.table.rowControllerAtIndex(3) as? SyntheseRow{
            row.label.setText("- 278,76 €")
            row.icone.setImageNamed("ico_Transport")
        }
        if let row = self.table.rowControllerAtIndex(4) as? SyntheseRow{
            row.label.setText("+ 2 347,45 €")
            row.icone.setImageNamed("ico_SalairesImpots")
        }
        if let row = self.table.rowControllerAtIndex(5) as? SyntheseRow{
            row.label.setText("- 53,78 €")
            row.icone.setImageNamed("ico_Loisirs")
        }
        if let row = self.table.rowControllerAtIndex(6) as? SyntheseRow{
            row.label.setText("- 134,07 €")
            row.icone.setImageNamed("ico_Autre")
        }
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
