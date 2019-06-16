//
//  jsonTestView.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-06-13.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit
import SwiftyJSON
class jsonTest: UIViewController {
    
    
    let networking = NetworkingService.shared
    let persistence = PersistenceService.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlPath = Bundle.main.path(forResource: "na_raw_cards", ofType: "json")
//        let urlPath = "https://kiloloco.com/api/users"
        //let urlPath = Bundle.main.url(forResource: "na_raw_cards", withExtension: "json")
        networking.request(urlPath!) { (result) in
            
            switch result {
            case .success(let data):
                
                do{
                    let json = try? JSON(data: data)
                    for numbers in 4417...4418 {
                        let idd = json!["card"][numbers][0]
                        let namee = json!["card"][numbers][1]
                        let attributee = json!["card"][numbers][2]
                        let sub_attributee = json!["card"][numbers][3]
                        let isUltimatee = json!["card"][numbers][4]
                        let type11 = json!["card"][numbers][5]
                        let type22 = json!["card"][numbers][6]
                        let rarityy = json!["card"][numbers][7]
                        let costt = json!["card"][numbers][8]
                        let questionMarkk = json!["card"][numbers][9]
                        let maxLevell = json!["card"][numbers][10]
                        let feedXPP = json!["card"][numbers][11]
                        let releasedd = json!["card"][numbers][12]
                        let sellPricee = json!["card"][numbers][13]
                        let startHPP = json!["card"][numbers][14]
                        let endHPP = json!["card"][numbers][15]
                        let growthExponentHPSEE = json!["card"][numbers][16]
                        let startATKK = json!["card"][numbers][17]
                        let endATKK = json!["card"][numbers][18]
                        let growthExponentATKSEE = json!["card"][numbers][19]
                        let startRCVV = json!["card"][numbers][20]
                        let endRCVV = json!["card"][numbers][21]
                        let growthExponentRCVSEE = json!["card"][numbers][22]
                        let maxXPP = json!["card"][numbers][23]
                        let xpExponentt = json!["card"][numbers][24]
                        let activeSkilll = json!["card"][numbers][25]
                        let leaderSkilll = json!["card"][numbers][26]
                        let enemyTurnss = json!["card"][numbers][27]
                        let enemyL1HPP = json!["card"][numbers][28]
                        let enemyL10HPP = json!["card"][numbers][29]
                        let growthExponentHPP = json!["card"][numbers][30]
                        let enemyL1ATKK = json!["card"][numbers][31]
                        let enemyL10ATKK = json!["card"][numbers][32]
                        let growthExponentATKK = json!["card"][numbers][33]
                        let enemyL1DEFF = json!["card"][numbers][34]
                        let enemyL10DEFF = json!["card"][numbers][35]
                        let growthExponentDEFF = json!["card"][numbers][36]
                        let maxSomethingg = json!["card"][numbers][37]
                        let enemyCoinss = json!["card"][numbers][38]
                        let enemyEXPP = json!["card"][numbers][39]
                        let preEvoIDD = json!["card"][numbers][40]
                        let evoMat11 = json!["card"][numbers][41]
                        let evoMat22 = json!["card"][numbers][42]
                        let evoMat33 = json!["card"][numbers][43]
                        let evoMat44 = json!["card"][numbers][44]
                        let evoMat55 = json!["card"][numbers][45]
                        let devoMat11 = json!["card"][numbers][46]
                        let devoMat22 = json!["card"][numbers][47]
                        let devoMat33 = json!["card"][numbers][48]
                        let devoMat44 = json!["card"][numbers][49]
                        let devoMat55 = json!["card"][numbers][50]
                        let bitFlag11 = json!["card"][numbers][51]
                        let bitFlag22 = json!["card"][numbers][52]
                        let bitFlag33 = json!["card"][numbers][53]
                        let bitFlag44 = json!["card"][numbers][54]
                        let bitFlag55 = json!["card"][numbers][55]
                        let bitFlag66 = json!["card"][numbers][56]
                        let enemySkillCountt = json!["card"][numbers][57]
                        var enemySkillIDD = Int32(0)
                        var enemySkillChancee = Int32(0)
                        var enemySomethingg = Int32(0)
                        var numberOfAwakeningss = json!["card"][numbers][58]
                        if enemySkillCountt > 0 {
                            for i in 0...enemySkillCountt.intValue-1 {
                                enemySkillIDD = json!["card"][numbers][58+(3*i)].int32Value
                                enemySkillChancee = json!["card"][numbers][59+(3*i)].int32Value
                                enemySomethingg = json!["card"][numbers][60+(3*i)].int32Value
                                print(enemySkillIDD)
                            }
                            print("ENEMY HAS SKILLS")
                            numberOfAwakeningss = json!["card"][numbers][58+(3*enemySkillCountt.intValue)]
                            print("ENEMY HAS ", numberOfAwakeningss, " AWAKENINGS")
                        }
                        
                        
                        
                        var awokenIndex = 59+(3*enemySkillCountt.intValue)
                        var awakening11 = 0 as Int32
                        var awakening22 = 0 as Int32
                        var awakening33 = 0 as Int32
                        var awakening44 = 0 as Int32
                        var awakening55 = 0 as Int32
                        var awakening66 = 0 as Int32
                        var awakening77 = 0 as Int32
                        var awakening88 = 0 as Int32
                        var awakening99 = 0 as Int32
                        
                        switch numberOfAwakeningss {
                        case 0:
                            break
                        case 1:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = 0
                            awakening33 = 0
                            awakening44 = 0
                            awakening55 = 0
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 2:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = 0
                            awakening44 = 0
                            awakening55 = 0
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 3:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = 0
                            awakening55 = 0
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 4:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = 0
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 5:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = json!["card"][numbers][awokenIndex+4].int32Value
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 6:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = json!["card"][numbers][awokenIndex+4].int32Value
                            awakening66 = json!["card"][numbers][awokenIndex+5].int32Value
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        case 7:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = json!["card"][numbers][awokenIndex+4].int32Value
                            awakening66 = json!["card"][numbers][awokenIndex+5].int32Value
                            awakening77 = json!["card"][numbers][awokenIndex+6].int32Value
                            awakening88 = 0
                            awakening99 = 0
                        case 8:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = json!["card"][numbers][awokenIndex+4].int32Value
                            awakening66 = json!["card"][numbers][awokenIndex+5].int32Value
                            awakening77 = json!["card"][numbers][awokenIndex+6].int32Value
                            awakening88 = json!["card"][numbers][awokenIndex+7].int32Value
                            awakening99 = 0
                        case 9:
                            awakening11 = json!["card"][numbers][awokenIndex].int32Value
                            awakening22 = json!["card"][numbers][awokenIndex+1].int32Value
                            awakening33 = json!["card"][numbers][awokenIndex+2].int32Value
                            awakening44 = json!["card"][numbers][awokenIndex+3].int32Value
                            awakening55 = json!["card"][numbers][awokenIndex+4].int32Value
                            awakening66 = json!["card"][numbers][awokenIndex+5].int32Value
                            awakening77 = json!["card"][numbers][awokenIndex+6].int32Value
                            awakening88 = json!["card"][numbers][awokenIndex+7].int32Value
                            awakening99 = json!["card"][numbers][awokenIndex+8].int32Value
                        default:
                            awakening11 = 0
                            awakening22 = 0
                            awakening33 = 0
                            awakening44 = 0
                            awakening55 = 0
                            awakening66 = 0
                            awakening77 = 0
                            awakening88 = 0
                            awakening99 = 0
                        }
                        
                        awokenIndex = awokenIndex + numberOfAwakeningss.intValue-1
                        
                        
                        //let superAwakeningss = json!["card"][numbers][awokenIndex+1]
                        let baseFormm = json!["card"][numbers][awokenIndex+2]
                        let groupingKeyy = json!["card"][numbers][awokenIndex+3]
                        let type33 = json!["card"][numbers][awokenIndex+4]
                        let mpSelll = json!["card"][numbers][awokenIndex+5]
                        let latentValuess = json!["card"][numbers][awokenIndex+6]
                        let collabFlagg = json!["card"][numbers][awokenIndex+7]
                        let inheritanceFlagg = json!["card"][numbers][awokenIndex+8]
                        let jpNamee = json!["card"][numbers][awokenIndex+9]
                        let percentAt1100 = json!["card"][numbers][awokenIndex+10]
                        let randValue11 = json!["card"][numbers][awokenIndex+11]
                        let randValue22 = json!["card"][numbers][awokenIndex+12]
                        
                        
                        
                        let strongSelf = self
                        let monster = Monsters(context: strongSelf.persistence.context)
                        monster.name = namee.string
                        monster.id = idd.int32Value
                        monster.attribute = attributee.int32Value
                        monster.subattribute = sub_attributee.int32Value
                        monster.isUltimate = isUltimatee.boolValue
                        monster.type1 = type11.int32Value
                        monster.type2 = type22.int32Value
                        monster.rarity = rarityy.int32Value
                        monster.cost = costt.int32Value
                        monster.questionMark = questionMarkk.int32Value
                        monster.maxLevel = maxLevell.int32Value
                        monster.feedXP = feedXPP.int32Value
                        monster.released = releasedd.int32Value
                        monster.sellPrice = sellPricee.int32Value
                        monster.startHP = startHPP.int32Value
                        monster.endHP = endHPP.int32Value
                        monster.growthExponentHPSE = growthExponentHPSEE.floatValue
                        monster.startATK = startATKK.int32Value
                        monster.endATK = endATKK.int32Value
                        monster.growthExponentATKSE = growthExponentATKSEE.floatValue
                        monster.startRCV = startRCVV.int32Value
                        monster.endRCV = endRCVV.int32Value
                        monster.growthExponentRCVSE = growthExponentRCVSEE.floatValue
                        monster.maxXP = maxXPP.int32Value
                        monster.xpExponent = xpExponentt.floatValue
                        monster.activeSkill = activeSkilll.stringValue
                        monster.leaderSkill = leaderSkilll.stringValue
                        monster.enemyTurns = enemyTurnss.int32Value
                        monster.enemyL1HP = enemyL1HPP.int32Value
                        monster.enemyL10HP = enemyL10HPP.int32Value
                        monster.growthExponentHP = growthExponentHPP.floatValue
                        monster.enemyL1ATK = enemyL1ATKK.int32Value
                        monster.enemyL10ATK = enemyL10ATKK.int32Value
                        monster.growthExponentATK = growthExponentATKK.floatValue
                        monster.enemyL1DEF = enemyL1DEFF.int32Value
                        monster.enemyL10DEF = enemyL10DEFF.int32Value
                        monster.growthExponentDEF = growthExponentDEFF.floatValue
                        monster.maxSomething = maxSomethingg.int32Value
                        monster.enemyCoins = enemyCoinss.int32Value
                        monster.enemyEXP = enemyEXPP.int32Value
                        monster.preEvoID = preEvoIDD.stringValue
                        monster.evoMat1 = evoMat11.int32Value
                        monster.evoMat2 = evoMat22.int32Value
                        monster.evoMat3 = evoMat33.int32Value
                        monster.evoMat4 = evoMat44.int32Value
                        monster.evoMat5 = evoMat55.int32Value
                        monster.devoMat1 = devoMat11.int32Value
                        monster.devoMat2 = devoMat22.int32Value
                        monster.devoMat3 = devoMat33.int32Value
                        monster.devoMat4 = devoMat44.int32Value
                        monster.devoMat5 = devoMat55.int32Value
                        monster.bitFlag1 = bitFlag11.int32Value
                        monster.bitFlag2 = bitFlag22.int32Value
                        monster.bitFlag3 = bitFlag33.int32Value
                        monster.bitFlag4 = bitFlag44.int32Value
                        monster.bitFlag5 = bitFlag55.int32Value
                        monster.bitFlag6 = bitFlag66.int32Value
                        monster.enemySkillCount = enemySkillCountt.int32Value
                        monster.enemySkillID = Int32(0)
                        monster.enemySkillChance = Int32(0)
                        monster.enemySomething = Int32(0)
                        if monster.enemySkillCount > 0 {
                            monster.enemySkillID = Int32(enemySkillIDD)
                            monster.enemySkillChance = Int32(enemySkillChancee)
                            monster.enemySomething = Int32(enemySomethingg)
                        }
                        monster.numberOfAwakenings = numberOfAwakeningss.int32Value
                        monster.awakening1 = awakening11
                        monster.awakening2 = awakening22
                        monster.awakening3 = awakening33
                        monster.awakening4 = awakening44
                        monster.awakening5 = awakening55
                        monster.awakening6 = awakening66
                        monster.awakening7 = awakening77
                        monster.awakening8 = awakening88
                        monster.awakening9 = awakening99
                        //monster.superAwakenings = superAwakeningss.stringValue
                        monster.baseForm = baseFormm.int32Value
                        monster.groupingKey = groupingKeyy.int32Value
                        monster.type3 = type33.int32Value
                        monster.mpSell = mpSelll.int32Value
                        monster.latentValues = latentValuess.int32Value
                        monster.collabFlag = collabFlagg.int32Value
                        monster.inheritenceFlag = inheritanceFlagg.int32Value
                        monster.jpName = jpNamee.stringValue
                        monster.percentAt110 = percentAt1100.int32Value
                        monster.randValue1 = randValue11.int32Value
                        monster.randValue2 = randValue22.int32Value
                        
                        
                        
                        
                        print(monster)
                        
//                        print(id, ", ", name)
                    }
                    print()
                    guard let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] else { return }
                    
                    let mons: [Monsters] = jsonArray.compactMap { [weak self] in
                        guard
                            let strongSelf = self,
                            let id = $0["id"] as? Int32,
                            let name = $0["card"] as? String
                            else { return nil }
                        
                        let monster = Monsters(context: strongSelf.persistence.context)
                        monster.name = name
                        print(name)
                        monster.id = id
                        return monster
                    }
                    print(mons)
                    
                
                
            } catch {
                print(error)
            }
                
                
            case .failure(let error): print(error)
            }
        }
        
    }
    
    
}
