//
//  SellerAddress.swift
//  TechnicalTestData
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation

public struct SellerAddress: Codable {
    public var country: Country
    public var city: City
    public var state: States
    
    public init(country: Country,
                  city: City,
                  state: States) {
        self.country = country
        self.city = city
        self.state = state
    }
}
