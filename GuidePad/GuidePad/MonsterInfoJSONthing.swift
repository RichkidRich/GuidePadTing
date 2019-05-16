//
//  MonsterInfoJSONthing.swift
//  GuidePad
//
//  Created by Jason Chan on 7/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation
import SwiftyJSON


func jsonBOI() {
    if let url = Bundle.main.url(forResource: "na_raw_cards", withExtension: "json") {
    do {
        let data = try Data(contentsOf: url, options: .mappedIfSafe)
        let json = try? JSON(data: data)
//            for names in json!["card"] {
//                print(names)
//            }
            print(json!["card"][5002][1])
    } catch {
//         handle error
        }
        
    }

}
