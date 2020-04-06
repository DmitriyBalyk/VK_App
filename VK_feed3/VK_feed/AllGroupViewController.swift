//
//  AllGroupViewController.swift
//  VK_feed
//
//  Created by Дмитрий Балык on 02.04.2020.
//  Copyright © 2020 DmitriyBalyk. All rights reserved.
//

import UIKit

class AllGroupViewController: UITableViewController {

    var groups = [allGroup(groupName: "Спортивные соревнования", groupImage: "dmtr")
    ]

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupViewCell", for: indexPath) as! AllGroupViewCell
        let group = groups[indexPath.row]
        cell.allGroupName.text = group.groupName
        return cell
    }


}
