//
//  main.swift
//  SwiftServer
//
//  Created by Tim on 16/02/2016.
//  Copyright © 2016 timominous. All rights reserved.
//

import Foundation
import Vapor

//print("Integration Successful!")

print("SwiftServer -- starting")

Route.get("hello") { _ -> ResponseConvertible in
  return ["Hello": "World"]
}

let server = Server()
server.run(port: 8080)

