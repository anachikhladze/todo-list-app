//
//  Model.swift
//  ToDoListApp
//
//  Created by Anna Sumire on 09.12.23.
//

import Foundation


struct Task: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var isDone: Bool
}

struct TaskList {
    static let taskList = [
        Task(name: "Mobile App Research", date: "4 Oct", isDone: false),
        Task(name: "Prepare WireFrame", date: "4 Oct", isDone: false),
        Task(name: "Prepare Screens", date: "4 Oct", isDone: false),
        Task(name: "Website Research", date: "5 Oct", isDone: true),
        Task(name: "Prepare WireFrame", date: "5 Oct", isDone: true),
        Task(name: "Prepare Screens", date: "5 Oct", isDone: true)
    ]
}
