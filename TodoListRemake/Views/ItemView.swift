//
//  ItemView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI
import SwiftData
struct ItemView: View {
    
    @Bindable var currentItem: TodoItem

    
    var body: some View {
        Label(
            title:  {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            },icon: {
                Image(systemName: currentItem.done == true ?  "checkmark.circle": "circle" )
                //Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
            }
        )
    }
}
#Preview {
    
    let container = TodoItem.preview
    
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    
}
