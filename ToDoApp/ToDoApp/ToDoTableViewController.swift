//
//  ViewController.swift
//  ToDoApp
//
//  Created by Dylan on 1/8/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    let itemArray = ["Go North", "Go South", "Go West"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Table View DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    // MARK: Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint(itemArray[indexPath.row])
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

