//
//  UserModel.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//


struct User {
    let login = "Alexey"
    let password = "111"
    let person: Person
}

struct Person {
    let name = "Алексей"
    let secondName = "Манохин"
    let yearsOld = 32
    let country = "Россия"
    let city = "Белгород"
    
    var fullName: String {
        name + " " + secondName
    }
}
