//
//  NewToDoView.swift
//  Group 1 Final project
//
//  Created by Anika P on 8/2/24.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/ .constant("")/*@END_MENU)TOKEN*/)
               
            
            Toggle(isOn: .constant(true)) {
                Text("Is it important?")
            }
            .padding()
            
            Button {
                
            } label: {
                Text("Save")
            }
        
        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}

/*import SwiftUI
import SwiftData
  
struct NewToDoView: View {
    @Bindable var toDoItem : ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
    
    var body: some View {
        
        ZStack{
            Color.init(red: 254/255, green: 217/255, blue: 183/255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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


/*import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem : ToDoItem
    @Environment(.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            .padding()
            
            Button {
                addToDo()
                self.showNewTask = false
            } label: {
                Text("Save")
            }
        
        }
        .padding()
    }
}

func addToDo() {
    let toDo = ToDoItem (title: toDoItem.title,
                       isImportant: toDoItem.isImportant)
    modelContext.insert(toDo)

#Preview {
    NewToDoView()
}


/*import SwiftUI
//import SwiftData
  
struct NewToDoView: View {
    //no variables in this file in source code
    //
    //
    
    
    var body: some View {
        
        
            VStack{
                Text("Task Title")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(red: 254/255, green: 217/255, blue: 183/255))
                
                TextField("Enter Task", text: /*@START_MENU_TOKEN@*//*PLACEHOLDER=Value@*/.constant(""),/*@END_MENU_TOKEN/)*/
                          //$toDoItem.title, axis: .vertical)
                
                 
                
                                                                                                    
                Toggle(isOn: .constant(true)) {
                //$toDoItem.isImportant)
                Text("Is it important?")
                    
                }
               // .padding()
            
                Button {
                    //nothing inside button in this view
                   // addToDo()
                  //  self.showNewTask = false
                }label: {
                    Text("Save")
                        .fontWeight(.semibold)
                    
                        .foregroundColor(Color(red: 0/255, green: 175/255, blue: 185/255))
                }
                .padding()
                
            }//end of VStack
            }
    
    //not in this file in source code
    
    

#Preview {
    NewToDoView()
}
//in source code it is just {NewTodoView()}
    /*let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: ToDoItem.self, configurations: config)
        let toDo = ToDoItem(title: "Example ToDo", isImportant: false)
        return NewToDoView(toDoItem: toDo, showNewTask: .constant(true))
            .modelContainer(container)
     }*/*/*/
*/
