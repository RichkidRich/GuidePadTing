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
                    for numbers in 1370...1372 {
                        let idd = json!["card"][numbers][0]
                        let namee = json!["card"][numbers][1]
                        let strongSelf = self
                        let monster = Monsters(context: strongSelf.persistence.context)
                        monster.name = namee.string
                        monster.id = idd.int32Value
                        print(monster)
                        
//                        print(id, ", ", name)
                    }
                    print()
                    guard let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] else { return }
                    
                    let mons: [Monsters] = jsonArray.compactMap { [weak self] in
                        guard
                            let strongSelf = self,
                            let name = $0["card"] as? String,
                            let id = $0["id"] as? Int32
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
