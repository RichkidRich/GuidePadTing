//
//  MonsterPageController.swift
//  GuidePad
//
//  Created by Jason Chan on 21/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class MonsterPageController: UIViewController {
    
    var monster: Monster?
    
    @IBOutlet var monsterImage: UIImageView!
    @IBOutlet var monsterNumber: UILabel!
    @IBOutlet var monsterPortrait: UIImageView!
    @IBOutlet var monsterNAName: UILabel!
    @IBOutlet var monsterJPName: UILabel!
    @IBOutlet var monsterRarity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ASSIGNS MONSTER INFO PASSED FROM TABLE TO THIS VIEW
        if let monster = monster {
            navigationItem.title = monster.name
            monsterNAName.text = monster.name
            monsterNumber.text = String(monster.number)
            monsterRarity.text = String(monster.rarity) + "★"
            monsterPortrait.image = UIImage(named: String(monster.number))
            monsterJPName.text = String(monster.maxlvl)
            monsterImage.image = UIImage(named: "MONS_0"+String(monster.number))
        } else {
            print("lmao get fucked")
            return
        }
    }
}
