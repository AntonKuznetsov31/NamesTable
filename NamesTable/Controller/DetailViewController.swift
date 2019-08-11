//
//  DetailViewController.swift
//  NamesTable
//
//  Created by Anton Kuznetsov on 8/11/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    // MARK: - Private Properties
    
    var person: Person? = nil
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            nameLabel.text = "\(person.name) \(person.surname)"
            emailLabel.text = person.email
            phoneNumberLabel.text = person.phoneNumber
        }
    }
}
