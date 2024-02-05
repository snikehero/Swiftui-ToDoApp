//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

//ViewModel for single todo list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {
        
    }
    func toogleIsDone(item: ToDoListItem) { //Updating the isDone property of the model both in Swift and FireStore DB.
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
