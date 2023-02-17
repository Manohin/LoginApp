//
//  UserModel.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//

import Foundation

struct User {
    private var login: String?
    private var password: String?
    private var person: Person?
}

struct Person {
    private let name: String
    private let secondName: String
    private let yearsOld: Int
    private let city: String
    private let activity: String
}
