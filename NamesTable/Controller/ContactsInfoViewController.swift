//
//  ContactsInfoViewController.swift
//  NamesTable
//
//  Created by Anton Kuznetsov on 8/8/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class ContactsInfoViewController: UIViewController {
     
     // MARK: - IBOutlets

     @IBOutlet weak var tableView: UITableView!
     
     // MARK: - Private Properties
     
     private var model = Person()
     private var personsArray: [Person] = Array()
     
     // MARK: - Lifecycle
     
     override func viewDidLoad() {
          super.viewDidLoad()
          personsArray = model.createPersons()
     }
     
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let indexPath = tableView.indexPathForSelectedRow {
               let detailVC = segue.destination as! DetailViewController
               detailVC.person = personsArray[indexPath.row]
          }
     }
}

// MARK: - Table view delegate

extension ContactsInfoViewController: UITableViewDelegate {

     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 80
     }
}

// MARK: - Table view data source

extension ContactsInfoViewController: UITableViewDataSource {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return personsArray.count
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
          let person = personsArray[indexPath.row]
          cell.textLabel?.text = "\(person.name) \(person.surname)"
          return cell
     }
}
