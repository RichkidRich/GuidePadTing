//
//  DungeonViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 10/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class DungeonViewController: UIViewController {
    
    @IBOutlet var Specials: UIView!
    @IBOutlet var Normals: UIView!
    @IBOutlet var Technicals: UIView!
    @IBOutlet var Multis: UIView!
    @IBOutlet var Rankings: UIView!
    @IBOutlet var RankingLabel: UILabel!
    @IBOutlet var MultiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Specials.layer.cornerRadius = 10;
        Specials.layer.masksToBounds = true;
        Normals.layer.cornerRadius = 10;
        Normals.layer.masksToBounds = true;
        Technicals.layer.cornerRadius = 10;
        Technicals.layer.masksToBounds = true;
        Multis.layer.cornerRadius = 10;
        Multis.layer.masksToBounds = true;
        Rankings.layer.cornerRadius = 10;
        Rankings.layer.masksToBounds = true;
        RankingLabel.sizeToFit();
        MultiLabel.sizeToFit();
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
