//
//  Person.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//
struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    private static var names = [
        "Петр",
        "Александр",
        "Степан",
        "Кирилл"
    ]
    private static var surnames = [
        "Иванов",
        "Суворов",
        "Степаненко",
        "Прохоров"
    ]
    private static var emails = [
        "krutota@gmail.com",
        "realman@mail.ru",
        "hardworker@yandex.ru",
        "thebest@gmail.com"
    ]
    private static var phones = [
        "375294567893",
        "375334561295",
        "375443346751",
        "375251936060"
    ]
    
}

extension Person {
    private static func listOfPersons() -> [Person] {
        var personList = [Person]()

        for _ in 0..<names.count {
            let name = names.remove(at: Int.random(in: 0..<names.count))
            let surname = surnames.remove(at: Int.random(in: 0..<surnames.count))
            let email = emails.remove(at: Int.random(in: 0..<emails.count))
            let phone = phones.remove(at: Int.random(in: 0..<phones.count))
            
            personList.append(Person(name: name, surname: surname, email: email, phone: phone))
        }
        
        return personList
    }
}


