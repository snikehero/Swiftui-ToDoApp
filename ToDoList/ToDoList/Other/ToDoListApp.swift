//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App{
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
