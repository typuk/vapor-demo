//
//  IncomingTodo.swift
//  App
//
//  Created by Artūrs Aļehna on 03/09/2018.
//

import Vapor

extension Todo {
    
    struct IncomingTodo: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil,
                        title: title ?? "",
                        completed: completed ?? false,
                        order: order ?? 0)
        }
        
    }
    
}
