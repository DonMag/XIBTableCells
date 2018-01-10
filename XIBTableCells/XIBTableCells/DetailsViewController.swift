//
//  DetailsViewController.swift
//  XIBTableCells
//
//  Created by Don Mini on 1/9/18.
//  Copyright © 2018 Don Mag. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

	var theContent: [String]?
	
	@IBOutlet weak var theTopLabel: UILabel!
	@IBOutlet weak var theBottomLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		if let t = theContent {
			theTopLabel.text = t[0]
			theBottomLabel.text = t[1]
		}
		
	}

}
