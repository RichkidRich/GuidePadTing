//
//  MonsterInfoJSONthing.swift
//  GuidePad
//
//  Created by Jason Chan on 7/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation



func readJSON() -> Any? {
    var json: Any?
    if let path = Bundle.main.path(forResource: "na_raw_cards", ofType: "json") {
        do {
            let fileURL = URL(fileURLWithPath: path)
            let data = try Data(contentsOf: fileURL, options: .mappedIfSafe)
            json = try? JSONSerialization.jsonObject(with: data)
        } catch {
            
        }
    }
    return json
}

