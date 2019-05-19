//
//  CollabViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 18/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit

class CollabViewController: UIViewController {

    @IBOutlet var CollabViews: [UIView]!
    
    override func viewDidLoad() {
        
        for collabs in CollabViews {
            collabs.layer.cornerRadius = 10
            collabs.layer.masksToBounds = true
        }
        
        super.viewDidLoad()

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
