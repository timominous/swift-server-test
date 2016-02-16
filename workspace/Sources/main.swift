//
//  main.swift
//  SwiftServer
//
//  Created by Tim on 16/02/2016.
//  Copyright © 2016 timominous. All rights reserved.
//

import Foundation
import Vapor

print("SwiftServer -- starting")

Route.get("hello") { _ -> ResponseConvertible in
  return ["Hello": "World"]
}

Route.get("hello/:name") { (request) -> ResponseConvertible in
  let name = request.parameters["name"] ?? "World"
  return ["Hello": name]
}

let server = Server()
server.run(port: 8080)

