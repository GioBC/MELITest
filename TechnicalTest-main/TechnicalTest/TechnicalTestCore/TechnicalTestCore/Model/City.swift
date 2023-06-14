//
//  City.swift
//  TechnicalTestData
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation

public struct City: Codable {
    public var id: String
    public var name: String
    
    public init(id: String,
                  name: String) {
        self.id = id
        self.name = name
    }
}
