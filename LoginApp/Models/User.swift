//
//  UserModel.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//


struct User {
    let login: String?
    let password: String?
    let person: Person?
}

struct Person {
    let name: String
    let secondName: String
    let yearsOld: Int
    let country: String
    let city: String
    let activity: String
}
