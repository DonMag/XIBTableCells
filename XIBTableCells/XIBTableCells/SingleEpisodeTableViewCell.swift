//
//  SingleEpisodeTableViewCell.swift
//  XIBTableCells
//
//  Created by Don Mini on 1/9/18.
//  Copyright © 2018 Don Mag. All rights reserved.
//

import UIKit

class SingleEpisodeTableViewCell: UITableViewCell {

	@IBOutlet weak var theImageView: UIImageView!
	@IBOutlet weak var theTopLabel: UILabel!
	@IBOutlet weak var theBottomLabel: UILabel!
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
