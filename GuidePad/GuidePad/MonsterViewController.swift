//
//  MonsterViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 4/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class MonsterViewController: UIViewController {
    
    //MARK: Properties

    //THE 4 LINES BELOW CONNECT THE CODE TO THE UI ELEMENTS IN MAIN.STORYBOARD

    var monster: Monster?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ASSIGNS MONSTER INFO PASSED FROM TABLE TO THIS VIEW
        if let monster = monster {
            navigationItem.title = monster.name
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "seg") {
            let sec = segue.destination as! MonsterPageController
            sec.monster = monster
        }
    }
    
    
}

