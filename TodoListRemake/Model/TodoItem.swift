//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-02-01.
//

import SwiftData
@Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool
    
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let exampleItems = [
    TodoItem(title:"Study for Chemistry Quiz",
             done: false)
    ,
    TodoItem(title: "Finish Computer Science Assignment",
             done:true)
    ,
    TodoItem(title: "Go for a run around campus",
             done:false)
    ,
]
