//
//  User.swift
//  MyGreatApp
//
//  Created by Str1de on 26.02.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(name: "Dmitry", surName: "Osipov")
        )
    }
}

struct Person {
    let name: String
    let surName: String
    var fullName: String {
        "\(name) \(surName)"
    }
}
