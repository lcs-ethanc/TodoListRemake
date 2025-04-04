//
//  TodoListRemakeApp.swift
//  TodoListRemake
//
//  Created by Pak Ching Ethan Chen on 2025-04-03.
//
import SwiftData
import SwiftUI

@main
struct TodoListRemakeApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
