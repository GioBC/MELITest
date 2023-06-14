//
//  States.swift
//  TechnicalTestCore
//
//  Created by Giovanny Beltran on 12/06/23.
//

import Foundation

public struct States: Codable {
    public var id: String
    public var name: String
    
    public init(id: String,
                  name: String) {
        self.id = id
        self.name = name
    }
}
