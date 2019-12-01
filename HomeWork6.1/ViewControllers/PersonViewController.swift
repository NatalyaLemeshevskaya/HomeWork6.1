//
//  PersonViewController.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    @IBOutlet var namePerson: UILabel!
    @IBOutlet var emailPerson: UILabel!
    @IBOutlet var phonePerson: UILabel!
    
    var name: String?
    var email: String?
    var phone: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePerson.text = name
        emailPerson.text = email
        phonePerson.text = phone
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
