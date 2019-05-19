//
//  MonsterBookViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 16/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit
class MonsterBookViewController: UIViewController {
    
    @IBOutlet var MonsterCategories: [UIView]!
    
    @IBAction func GFEButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for categories in MonsterCategories {
            categories.layer.cornerRadius = 10;
            categories.layer.masksToBounds = true
        }
        // Do any additional setup after loading the view.
    }
}
