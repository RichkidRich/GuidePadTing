//
//  Mons.swift
//  GuidePad
//
//  Created by Richard Lee on 2019-06-13.
//  Copyright © 2019 HungGo. All rights reserved.
//

import Foundation

struct Mons{
    
    let id: Int32
    let name: String
    
    init?(json: JSON) {
        guard let id = json["id"] as? Int32,
        let name = json["name"] as? String
            else { return nil }
        self.id = id
        self.name = name
    }
}
