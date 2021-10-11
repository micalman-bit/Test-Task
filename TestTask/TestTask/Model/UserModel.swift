//
//  UserModel.swift
//  TestTask
//
//  Created by Andrey Samchenko on 10.10.2021.
//

import Foundation

struct User: Codable {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    let password: String
    let age: Date
}
