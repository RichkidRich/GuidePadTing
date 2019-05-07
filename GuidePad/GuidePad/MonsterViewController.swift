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
    
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var monsterNumberLabel: UILabel!
    @IBOutlet var monsterNameLabel: UILabel!
    @IBOutlet var monsterMaxLvlLabel: UILabel!
    
    var monster: Monster?
    
    var arrayDict = NSMutableArray()
    
//    let file = "download_card_data"
  
//    func getPadData() {
//        let path: NSString = Bundle.main.path(forResource: "download_card_data", ofType: "json")! as NSString
//        let data: NSData = try! NSData(contentsOfFile: path as String, options: NSData.ReadingOptions.dataReadingMapped)
//        
//        startParsing(data: data)
//    }
//
//    func startParsing(data: NSData) {
//        let dict: NSDictionary!=(try! JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.mutableContainers)) as? NSDictionary
//        for i in 0..<(dict.value(forKey: "card") as! NSArray).count {
//            arrayDict.add((dict.value(forKey: "card") as! NSArray).object(at: i))
//        }
//        newTableView.reloadData()
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ASSIGNS MONSTER INFO PASSED FROM TABLE TO THIS VIEW
        if let monster = monster {
            navigationItem.title = monster.name
            monsterNameLabel.text = monster.name
            monsterNumberLabel.text = String(monster.number)
            monsterMaxLvlLabel.text = String(monster.maxlvl)
            monsterImageView.image = UIImage(named: "MONS_0"+String(monster.number))
        }
    }

}

