//
//  ContentView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search test
    @State var searchText: String = ""
    
    //The list of to-do items
    @State var todos: [TodoItem] = exampleItems
    
    //MARK: Computed Properties
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                List (todos){ todo in
                    ItemView(currentItem: todo)
                }
                    .searchable(text:$searchText)
                
                HStack{
                    TextField("Enter a to-do item", text:$newItemDescription)
                    
                    Spacer()
                    
                    Button("ADD"){
                        createToDo(withTitle: newItemDescription)
                    } .font(.caption)
                        .disabled(newItemDescription.isEmpty == true)
                }
                    .padding(20)
            }
            .navigationTitle("To do")
        }
   
  
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        //Create new todo item instance
        let todo = TodoItem(
        title: title,
        done: false
        )
        
        //Append
        todos.append(todo)
    }
}

    
#Preview {
    LandingView()
}


