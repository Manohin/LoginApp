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
    let name: String
    let secondName: String
    let yearsOld: Int
    let country: String
    let city: String
    var privateStory: String?
    
    var fullName: String {
        name + " " + secondName
    }
}
