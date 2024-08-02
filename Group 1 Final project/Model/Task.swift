//
//  Task.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/31/24.
//

import SwiftUI

    //Task Model and Sample Tasks
    struct Task: Identifiable {
        var id = UUID().uuidString
        var title: String
        var time: Date = Date()
    }
    
    // Total Task Meta View
    struct TaskMetaData: Identifiable {
        var id = UUID().uuidString
        var task: [Task]
        var taskDate: Date
    }
    
    
    //sample Date for Testing
    
    func getSampleDate(offset: Int) -> Date {
        let calendar = Calendar.current
        
        let date = calendar.date(byAdding: .day, value: offset, to: Date())
        
        return date ?? Date()
    }
    
    //Sample Tasks
    var tasks: [TaskMetaData] = [
        TaskMetaData(task: [
            Task(title: "Gym"),
            Task(title: "Calculus Tutoring"),
            Task(title: "Angelina's Birthday")
        ], taskDate: getSampleDate(offset: 1)),
        TaskMetaData(task: [
            
            Task(title: "Engineering Club Meeting")
        ], taskDate: getSampleDate(offset: -3)),
        TaskMetaData(task: [
            
            Task(title: "Piano Lesson")
        ], taskDate: getSampleDate(offset: -8)),
        TaskMetaData(task: [
            
            Task(title: "Next Version of SwiftUI")
        ], taskDate: getSampleDate(offset: 10)),
        TaskMetaData(task: [
            
            Task(title: "Nothing Much Workout !!!")
        ], taskDate: getSampleDate(offset: -22)),
        TaskMetaData(task: [
            
            Task(title: "iPhone 13 Great Design Change")
        ], taskDate: getSampleDate(offset: 15)),
        TaskMetaData(task: [
            
            Task(title: "Kavsoft App Updates...")
        ], taskDate: getSampleDate(offset: -20)),
    ]
    

