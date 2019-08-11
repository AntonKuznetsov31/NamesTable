//
//  Person.swift
//  NamesTable
//
//  Created by Anton Kuznetsov on 8/8/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import Foundation

struct Person {
    
    // MARK: - Public Properties
    
    var name: String = ""
    var surname: String = ""
    var email: String = ""
    var phoneNumber: String = ""
    
    // MARK: - Private Properties
    
    private let personsCount = 5
    
    private var namesArray = ["Bob",
                              "Bill",
                              "John",
                              "Tim",
                              "Abraham"]
    
    private var surnamesArray = ["Marley",
                                 "Murray",
                                 "Smith",
                                 "Cook",
                                 "Linkoln",
    ]
    
    private var emailsArray = ["name.surname@mail.com",
                               "nsurname@mail.com",
                               "surnamen@mail.com",
                               "ns@mail.com",
                               "sn@mail.com"]
    
    private var phoneNumbersArray = ["245139452",
                                     "439587323",
                                     "941573424",
                                     "987234595",
                                     "984579817"]
    
    // MARK: - Public Methods
    
    mutating func createPersons() -> [Person] {
        var personsArray: [Person] = Array()
        for _ in 0..<personsCount {
            var person = Person()
            person.name = namesArray.remove(at: Int.random(in: 0..<namesArray.count))
            person.surname = surnamesArray.remove(at: Int.random(in: 0..<surnamesArray.count))
            person.email = emailsArray.remove(at: Int.random(in: 0..<emailsArray.count))
            person.phoneNumber = phoneNumbersArray.remove(at: Int.random(in: 0..<phoneNumbersArray.count))
            personsArray.append(person)
        }
        return personsArray
    }
}


