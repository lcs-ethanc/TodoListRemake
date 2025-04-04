//
//  ItemView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem

    
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
//#Preview {
//    List{
//        ItemView(currentItem: Binding.constant(exampleItems[1]))
//        ItemView(currentItem: Binding.constant(exampleItems[2]))
//    }
//
//}
