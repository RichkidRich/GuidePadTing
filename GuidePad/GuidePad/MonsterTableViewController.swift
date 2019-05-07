//
//  MonsterTableViewController.swift
//  GuidePad
//
//  Created by Jason Chan on 4/5/2019.
//  Copyright © 2019 HungGo. All rights reserved.
//

import UIKit
import os.log

class MonsterTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var monsters = [Monster]()
    
    //MARK: Private Methods
    
    private func loadSampleMonsters() {
        guard let monster1 = Monster(number: 5002, name: "Aspiring Hero of Justice, Shirou Emiya", maxlvl: 110) else {
            fatalError("Unable to instantiate monster1")
        }
        
        guard let monster2 = Monster(number: 5001, name: "Shirou Emiya", maxlvl: 99) else {
            fatalError("Unable to instantiate monster2")
        }
        
        guard let monster3 = Monster(number: 4997, name: "Witch of the Freezing Fists, Cherun", maxlvl: 99) else {
            fatalError("Unable to instantiate monster3")
        }
        
        monsters += [monster1, monster2, monster3]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadSampleMonsters()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return monsters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MonsterTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MonsterTableViewCell else {
            fatalError("The dequeued cell is not an instance of MonsterTableViewCell")
        }
        
        let monster = monsters[indexPath.row]

        cell.nameLabel.text = monster.name
        cell.numberLabel.text = String(monster.number)
        cell.levelLabel.text = String(monster.maxlvl)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch(segue.identifier ?? "") {
        case "ShowDetails":
            guard let monsterDetailViewController = segue.destination as? MonsterViewController
                else {
                    fatalError("Unexpected Destination: \(segue.destination)")
            }
            
            guard let selectedMonsterCell = sender as? MonsterTableViewCell else {
                fatalError("Unexpected Sender: \(sender ?? "oh no")")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedMonsterCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            let selectedMonster = monsters[indexPath.row]
            monsterDetailViewController.monster = selectedMonster
            
        default: fatalError("Unexpected Segue Error: \(segue))")
        }
    }
 

}
