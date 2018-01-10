//
//  ViewController.swift
//  XIBTableCells
//
//  Created by Don Mini on 1/9/18.
//  Copyright © 2018 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var theTableView: UITableView!
	
	let sampleData = [
		["Title 1", "SubTitle 1"],
		["Just", "Some more text, but this has enough to cause at least one line of word-wrapping!"],
		["Showing the", "Data being set"],
		["This is the Fourth", "Row of data"],
		["And the last row", "Of sample data"],
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		theTableView.delegate = self
		theTableView.dataSource = self
		
		theTableView.rowHeight = UITableViewAutomaticDimension
		theTableView.estimatedRowHeight = 80.0
		
		theTableView.register(UINib(nibName: "SingleEpisodeTableViewCell", bundle: nil), forCellReuseIdentifier: "SECell")
	}


	func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return sampleData.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "SECell", for: indexPath) as! SingleEpisodeTableViewCell
	
		// Configure the cell...
		cell.theTopLabel.text = sampleData[indexPath.row][0]
		cell.theBottomLabel.text = sampleData[indexPath.row][1] // + "\n" + "Second line"

		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print("Selected row at:", indexPath)
		
		let vc = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
		vc.theContent = sampleData[indexPath.row]
		self.navigationController?.pushViewController(vc, animated: true)
		
	}

}

