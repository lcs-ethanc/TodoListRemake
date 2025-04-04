//
//  ContentView.swift
//  ToDoList
//
//  Created by Pak Ching Ethan Chen on 2025-01-28.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search test
    @State var searchText: String = ""
    
    //Access model content
    @Environment(\.modelContext) var modelContext
    
    //The list of to-do items
    @Query var todos: [TodoItem]
    
    //MARK: Computed Properties
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
        
        
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        //Create new todo item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

    
//#Preview {
//    LandingView()
//}


