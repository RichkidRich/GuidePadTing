//
//  MonsterTableViewCell.swift
//  GuidePad
//
//  Created by Jason Chan on 4/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit
import os.log

class MonsterTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: Navigation

}
