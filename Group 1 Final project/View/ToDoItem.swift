//
//  ToDoItem.swift
//  Group 1 Final project
//
//  Created by Anika P on 8/2/24.
//

import Foundation
import SwiftData
@Model
class ToDoItem {
    var title: String
    var isImportant: Bool
    
init(title: String, isImportant: Bool = false) {
       self.title = title
       self.isImportant = isImportant
    }
}


