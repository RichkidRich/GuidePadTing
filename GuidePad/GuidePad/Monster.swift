//
//  Monster.swift
//  GuidePad
//
//  Created by Jason Chan on 4/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class Monster {
    
    //CONTROLS THE MONSTER CLASS
    //ASSIGN MORE VARIABLES ONCE WE FIGURE OUT JSON PARSING
    
    //MARK: Properties
    
    var number: Int
    var name: String
//    var photo: UIImage?
//    var hp: Int
//    var atk: Int
//    var rcv: Int
    var maxlvl: Int
    
    
    init?( number: Int, name: String, maxlvl: Int /*hp: Int, atk: Int, rcv: Int, photo: UIImage*/) {
        
        guard !name.isEmpty else {
            return nil
        }
        
        guard (number >= 1) else {
            return nil
        }
        
        self.number = number
        self.name = name
//        self.photo = photo
//        self.hp = hp
//        self.atk = atk
//        self.rcv = rcv
        self.maxlvl = maxlvl
        
    }
}
