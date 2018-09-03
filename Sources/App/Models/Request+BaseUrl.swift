//
//  Request+BaseUrl.swift
//  App
//
//  Created by Artūrs Aļehna on 03/09/2018.
//

import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers["Host"].first!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos/"
    }
}
