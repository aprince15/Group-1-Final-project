//
//  NewToDoView.swift
//  Group 1 Final project
//
//  Created by Anika P on 8/2/24.
//

import SwiftUI
import SwiftData
  
struct NewToDoView: View {
    @Bindable var toDoItem : ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
    
    var body: some View {
        
        ZStack {
            Color.init(red: 254/255, green: 217/255, blue: 183/255)
                .ignoresSafeArea()
            VStack{
                Text("Task Title")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(red: 254/255, green: 217/255, blue: 183/255))
                
                TextField("Enter Task", text: $toDoItem.title, axis: .vertical)
                
                    .padding()
                   background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                //.padding()
                
                Toggle(isOn: $toDoItem.isImportant) {
                    Text("Is it important?")
                        .padding()
                    
                }
                
                Button {
                    addToDo()
                    self.showNewTask = false
                }label: {
                    Text("Save")
                        .fontWeight(.semibold)
                    
                        .foregroundColor(Color(red: 0/255, green: 175/255, blue: 185/255))
                }
                .padding()
                
            }//end of VStack
        }
        .padding()
    }
    
    func addToDo() {
        let toDo = ToDoItem (title: toDoItem.title,
                           isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    
    }
}
#Preview
{ let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: ToDoItem.self, configurations: config)
        let toDo = ToDoItem(title: "Example ToDo", isImportant: false)
        return NewToDoView(toDoItem: toDo, showNewTask: .constant(true))
            .modelContainer(container)
 }

