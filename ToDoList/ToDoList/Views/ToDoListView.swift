//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = TodoListViewViewModel()
    
    init() {
        
    }
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
