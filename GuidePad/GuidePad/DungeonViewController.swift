//
//  DungeonViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 10/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class DungeonViewController: UIViewController {
    
    
    @IBOutlet var DungeonView: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for dungeons in DungeonView {
            dungeons.layer.cornerRadius = 10;
            dungeons.layer.masksToBounds = true
        }
        
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
