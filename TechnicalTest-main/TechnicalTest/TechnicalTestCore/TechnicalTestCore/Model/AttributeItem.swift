//
//  AttributeItem.swift
//  TechnicalTestData
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation

public struct AttributeItem: Codable {
    public var name: String
    public var value_name: String?
    
    public init(name: String,
                value_name: String) {
        self.name = name
        self.value_name = value_name
    }
}
