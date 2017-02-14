//
//  Table View Controller.swift
//  HellaCells
//
//  Created by Edmund Holderbaum on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController : UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "HellaCell", for: indexPath)
        myCell.textLabel?.text = "\(indexPath.row)"
        myCell.backgroundColor = UIColor.getRandomColor()
        return myCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dest = segue.destination as? HellaView,
            segue.identifier == "HellaSegue",
            let indexPath = tableView.indexPathForSelectedRow,
            let cellSource = tableView.cellForRow(at: indexPath) else{return}
        
        //dest.view.backgroundColor = cellSource.backgroundColor
        //so in the course of doing this i found that i can actually change some properties
        //right here during the transition... let's ask if that's OK
        dest.bgColor = cellSource.backgroundColor!
        dest.labelText = "\(indexPath.row)"
    }
    
}

extension UIColor {
    class func getRandomColor() -> UIColor {
        let red = drand48()
        let green = drand48()
        let blue = drand48()
        
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }
}
