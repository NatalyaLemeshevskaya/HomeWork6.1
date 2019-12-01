//
//  ListOfPersonViewController.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class ListOfPersonViewController: UITableViewController {
    
    // MARK: - Private Properties
    private var persons = Person.listOfPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCell()
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "styleCell",
                                                 for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = persons[indexPath.row].name + " " + persons[indexPath.row].surname
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showPerson", sender: person)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPerson" {
            let personVC = segue.destination as! PersonViewController
            personVC.person = sender as? Person
        }
    }
    
    // MARK: - Private Method
    private func registerTableViewCell() {
        let xib = UINib(nibName: "CustomTablrViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "styleCell")
    }

}
