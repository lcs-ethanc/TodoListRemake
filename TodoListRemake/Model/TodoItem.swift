//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-02-01.
//

import SwiftUI

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
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
