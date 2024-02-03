//
//  User.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
