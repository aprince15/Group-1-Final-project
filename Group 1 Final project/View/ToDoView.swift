//
//  ToDoView.swift
//  Group 1 Final project
//
//  Created by Anika P on 8/2/24.
//

import SwiftUI
import SwiftData
struct ToDoView: View {
    
    @State private var showNewTask = false
    //query and environment not in this file in source code
    //@Query var toDos: [ToDoItem]
    //@Environment(\.modelContext) var modelContext
    
    var body: some View {
       
           
            VStack{
                HStack{
                    
                    Text("To-Do List")
                        .font(.system(size:40))
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 0/255, green: 126/255, blue: 167/255))
                
                    Spacer()
                    
                    Button {
                        withAnimation {
                            self.showNewTask = true
                        }
                    } label: {
                        Text("+")
                          .foregroundColor(Color(red: 240/255, green: 113/255, blue: 103/255))
                          .font(.title)
                    }
                }//end of HStack
                .padding()
                Spacer()
            }// end of VStack
    
        //not in this file in source code
       // List {
                //ForEach (toDos) { toDoItem in
                        //Text(toDoItem.title)
              //  }
            
         //   .onDelete(perform: deleteToDo)
          //  .listStyle(.plain)
        }
        
        
       // if showNewTask {
            //NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
            //different in source code
        }
    
    
    //not in this file in source code
   // func deleteToDo(at offsets: IndexSet) {
        //for offset in offsets {
            //     let toDoItem = toDos[offset]
         //   modelContext.delete(toDoItem)
#Preview {
    ToDoView()
}

