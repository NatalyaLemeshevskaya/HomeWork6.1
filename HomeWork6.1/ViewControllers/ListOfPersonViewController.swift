//
//  ListOfPersonViewController.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class ListOfPersonViewController: UITableViewController {
    
    var persons: [Person] = []
    var names = ["Петр", "Александр", "Степан", "Кирилл"]
    var surnames = ["Иванов", "Суворов", "Степаненко", "Прохоров"]
    var emails = ["krutota@gmail.com", "realman@mail.ru", "hardworker@yandex.ru", "thebest@gmail.com"]
    var phones = ["375294567893", "375334561295", "375443346751", "375251936060"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createArrayPeople()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    private func createArrayPeople() {
        //let arrayMerged = zip(array1,array2).flatMap{ [$0.0, $0.1] }
        
        for _ in 0...names.count-1 {
            let randonInsex = Int.random(in: 0...names.count-1)
            persons.append(Person(name: names[randonInsex], surname: surnames[randonInsex], email: emails[randonInsex], phone: phones[randonInsex]))
        }
      
//        for (name, (surname, (email, phone))) in zip(names, zip(surnames,  zip(emails, phones))) {
//            persons.append(Person(name: name, surname: surname, email: email, phone: phone))
//        }
        
        print(persons)
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].name + " " + persons[indexPath.row].surname
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let personVC = segue.destination as! PersonViewController
            personVC.name = persons[indexPath.row].name + " " + persons[indexPath.row].surname
            personVC.email = persons[indexPath.row].email
            personVC.phone = persons[indexPath.row].phone
            
        }
    }

}
