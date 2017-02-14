//
//  HellaView.swift
//  HellaCells
//
//  Created by Edmund Holderbaum on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaView: UIViewController {
    
    var labelText = ""
    var bgColor: UIColor = UIColor.cyan
    
    @IBOutlet weak var HellaLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        HellaLabel.text = labelText
        view.backgroundColor = bgColor
    }
}
