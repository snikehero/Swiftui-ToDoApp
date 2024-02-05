//
//  TodoListViewViewModel.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//
import FirebaseFirestore
import Foundation

    // ViewModel for list of items view
    // Primary Tab
class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    init(userId: String) {
        self.userId  = userId
    }
    /// Delete todo list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
