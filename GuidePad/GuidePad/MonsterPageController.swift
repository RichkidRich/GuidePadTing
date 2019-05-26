//
//  MonsterPageController.swift
//  GuidePad
//
//  Created by Jason Chan on 21/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit
import SwiftCharts

class MonsterPageController: UIViewController {
    
    var monster: Monster?
    
    @IBOutlet var monsterImage: UIImageView!
    @IBOutlet var monsterNumber: UILabel!
    @IBOutlet var monsterPortrait: UIImageView!
    @IBOutlet var monsterNAName: UILabel!
    @IBOutlet var monsterJPName: UILabel!
    @IBOutlet var monsterRarity: UILabel!
    @IBOutlet var portraitBG: UIView!
    @IBOutlet var reverseCurve: UIView!
    @IBOutlet var moreReverseCurveBG: UIView!
    
    @IBOutlet var reverseCurveBG: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        portraitBG.layer.cornerRadius = 8;
        reverseCurveBG.layer.cornerRadius = 8;
        reverseCurveBG.layer.maskedCorners = [.layerMinXMaxYCorner];
        moreReverseCurveBG.layer.cornerRadius = 8;
        moreReverseCurveBG.layer.maskedCorners = [.layerMaxXMinYCorner];
        
        // ASSIGNS MONSTER INFO PASSED FROM TABLE TO THIS VIEW
        if let monster = monster {
            navigationItem.title = monster.name
            monsterNAName.text = monster.name
            monsterNumber.text = "No. " + String(monster.number)
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
