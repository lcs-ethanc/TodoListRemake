//
//  ItemView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem

    
    var body: some View {
        Label(
            title:  {
                Text(currentItem.title)
            },icon: {
                if currentItem.done == true {
                Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
                
            }
        )
    }
}
#Preview {
    List{
        ItemView(currentItem: exampleItems[1])
        ItemView(currentItem: exampleItems[2])
    }

}
