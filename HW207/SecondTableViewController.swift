//
//  SecondTableViewController.swift
//  HW207
//
//  Created by Dmitrii Onegin on 29.12.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return persons.map {$0.name}
        }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
       
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.phone
        
        cell.contentConfiguration = content
        
        return cell
    }
  
    

    
}
