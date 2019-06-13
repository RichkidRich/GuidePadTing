//
//  Monsters+CoreDataProperties.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-06-13.
//  Copyright © 2019 HungGo. All rights reserved.
//
//

import Foundation
import CoreData


extension Monsters {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Monsters> {
        return NSFetchRequest<Monsters>(entityName: "Monsters")
    }

    @NSManaged public var randValue2: Int32
    @NSManaged public var randValue1: Int32
    @NSManaged public var percentAt110: Int32
    @NSManaged public var jpName: String?
    @NSManaged public var inheritenceFlag: Int32
    @NSManaged public var collabFlag: Int32
    @NSManaged public var latentValues: Int32
    @NSManaged public var mpSell: Int32
    @NSManaged public var type3: Int32
    @NSManaged public var groupingKey: Int32
    @NSManaged public var baseForm: Int32
    @NSManaged public var superAwakenings: String?
    @NSManaged public var awakenings: String?
    @NSManaged public var enemySomething: Int32
    @NSManaged public var enemySkillChance: Int32
    @NSManaged public var enemySkillID: Int32
    @NSManaged public var enemySkillCount: Int32
    @NSManaged public var bitFlag7: Int32
    @NSManaged public var bitFlag6: Int32
    @NSManaged public var bitFlag5: Int32
    @NSManaged public var bitFlag4: Int32
    @NSManaged public var bitFlag3: Int32
    @NSManaged public var bitFlag2: Int32
    @NSManaged public var bitFlag1: Int32
    @NSManaged public var devoMat5: Int32
    @NSManaged public var devoMat4: Int32
    @NSManaged public var devoMat3: Int32
    @NSManaged public var devoMat2: Int32
    @NSManaged public var devoMat1: Int32
    @NSManaged public var evoMat5: Int32
    @NSManaged public var evoMat4: Int32
    @NSManaged public var evoMat3: Int32
    @NSManaged public var evoMat2: Int32
    @NSManaged public var evoMat1: Int32
    @NSManaged public var preEvoID: String?
    @NSManaged public var enemyEXP: Int32
    @NSManaged public var enemyCoins: Int32
    @NSManaged public var maxSomething: Int32
    @NSManaged public var growthExponentDEF: Int32
    @NSManaged public var enemyL10DEF: Int32
    @NSManaged public var enemyL1DEF: Int32
    @NSManaged public var growthExponentATK: Int32
    @NSManaged public var growthExponentHP: Int32
    @NSManaged public var enemyL1ATK: Int32
    @NSManaged public var enemyL10ATK: Int32
    @NSManaged public var enemyL10HP: Int32
    @NSManaged public var enemyL1HP: Int32
    @NSManaged public var enemyTurns: Int32
    @NSManaged public var leaderSkill: String?
    @NSManaged public var activeSkill: String?
    @NSManaged public var xpExponent: Int32
    @NSManaged public var maxXP: Int32
    @NSManaged public var growthExponentRCVSE: Int32
    @NSManaged public var growthExponentATKSE: Int32
    @NSManaged public var growthExponentHPSE: Int32
    @NSManaged public var startRCV: Int32
    @NSManaged public var endRCV: Int32
    @NSManaged public var startATK: Int32
    @NSManaged public var endATK: Int32
    @NSManaged public var startHP: Int32
    @NSManaged public var endHP: Int32
    @NSManaged public var sellPrice: Int32
    @NSManaged public var released: Int32
    @NSManaged public var feedXP: Int32
    @NSManaged public var maxLevel: Int32
    @NSManaged public var questionMark: Int32
    @NSManaged public var cost: Int32
    @NSManaged public var rarity: Int32
    @NSManaged public var type2: Int32
    @NSManaged public var type1: Int32
    @NSManaged public var isUltimate: Bool
    @NSManaged public var subattribute: Int32
    @NSManaged public var attribute: Int32
    @NSManaged public var name: String?
    @NSManaged public var id: Int32

}
