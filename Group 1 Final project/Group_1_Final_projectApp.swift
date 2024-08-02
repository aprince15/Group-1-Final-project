//
//  Group_1_Final_projectApp.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/26/24.
//

import SwiftUI
import SwiftData
@main
struct Group_1_Final_projectApp: App {
    var body: some Scene {
        WindowGroup {
                ContentView()
               .modelContainer(for: ToDoItem.self)
            }
        }
    }

