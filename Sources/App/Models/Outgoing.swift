//
//  Outgoing.swift
//  App
//
//  Created by Artūrs Aļehna on 03/09/2018.
//

import Vapor

extension Todo {
    
    struct Outgoing: Content {
        var id: Int?
        var title: String?
        var completed: Bool?
        var order: Int?
        var url: String
    }
    
}

extension Todo {
    func makeOutGoing(with req: Request) throws -> Outgoing {
        let idString = id?.description ?? ""
        let url = req.baseURL + idString
        return Outgoing(id: id,
                        title: title,
                        completed: completed,
                        order: order,
                        url: url)
    }
}

//extension Future where T == Todo {
//    func makeOutGoing(_ req: Request) -> Todo.Outgoing {
//        return self.map {
//            return try $0.map {
//                return try $0.makeOutGoing(with: req)
//            }
//        }
//    }
//}
