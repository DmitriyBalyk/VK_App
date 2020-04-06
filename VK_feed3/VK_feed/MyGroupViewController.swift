//
//  MyGroupViewController.swift
//  VK_feed
//
//  Created by Дмитрий Балык on 02.04.2020.
//  Copyright © 2020 DmitriyBalyk. All rights reserved.
//

import UIKit

class MyGroupViewController: UITableViewController {

    var groups = [allGroup]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MeGroupViewCell", for: indexPath) as! MeGroupViewCell
        cell.groupLabel.text = groups[indexPath.row].groupName
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
        let allGroupViewController = segue.source as! AllGroupViewController
        
        if let indexPath = allGroupViewController.tableView.indexPathForSelectedRow {
            let group = allGroupViewController.groups[indexPath.row]
                if !groups.contains(group) {
                    groups.append(group)
                    tableView.reloadData()
                }
            }
        }

    }
    
    override func tableView(
        _ tableView: UITableView,
        commit editingStyle: UITableViewCell.EditingStyle,
        forRowAt indexPath: IndexPath) {
        
        
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.reloadData()
        }

    }
    


}
