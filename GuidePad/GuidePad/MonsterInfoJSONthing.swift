//
//  MonsterInfoJSONthing.swift
//  GuidePad
//
//  Created by Jason Chan on 7/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation
import SwiftyJSON
import CoreData


func jsonBOI() {
    if let url = Bundle.main.url(forResource: "na_raw_cards", withExtension: "json") {
    do {
//        var monsters: [NSManagedObject] = []
        let data = try Data(contentsOf: url, options: .mappedIfSafe)
        let json = try? JSON(data: data)
        for names in 5000...5001 {
            let cardname = json!["card"][names][1]
            let cardnumber = json!["card"][names][0]
            
            print(cardnumber,",", cardname)
//                print(json!["card"][names][1])
        }
//        for names in json!["card"] {
//
//            print(names[1])
//
//        }
        print(json!["card"][5002][1])
    } catch {
//         handle error
        }
        
    }

}
