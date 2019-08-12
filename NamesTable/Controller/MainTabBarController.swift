//
//  MainTabBarController.swift
//  NamesTable
//
//  Created by Anton Kuznetsov on 8/12/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    private var model = Person()
    
    var personsArray: [Person] = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
        personsArray = model.createPersons()
    }
}
