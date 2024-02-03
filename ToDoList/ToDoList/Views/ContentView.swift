//
//  ContentView.swift
//  ToDoList
//
//  Created by Moises Sanchez on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //Signed in
            TabView {
                ToDoListView()
                    .tabItem {
                    Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
