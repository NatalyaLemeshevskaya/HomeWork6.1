//
//  PersonViewController.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var namePerson: UILabel!
    @IBOutlet var emailPerson: UILabel!
    @IBOutlet var phonePerson: UILabel!
    
    // MARK: - Public Properties
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePerson.text = person.name + " " + person.surname
        emailPerson.text = person.email
        phonePerson.text = person.phone
    }

}
