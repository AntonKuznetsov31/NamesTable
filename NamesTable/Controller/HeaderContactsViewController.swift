//
//  HeaderContactsViewController.swift
//  NamesTable
//
//  Created by Anton Kuznetsov on 8/11/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class HeaderContactsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Public Properties
    
    var personsArray: [Person] = Array()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tbvc = self.tabBarController  as! MainTabBarController
        personsArray = tbvc.personsArray
    }
    
}

// MARK: - Table view delegate

extension HeaderContactsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}

// MARK: - Table view data source

extension HeaderContactsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return personsArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personsArray[section]
        return "\(person.name) \(person.surname)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = personsArray[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerPersonCell", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.email
        case 1:
            cell.textLabel?.text = person.phoneNumber
        default:
            break
        }
        return cell
    }
}
