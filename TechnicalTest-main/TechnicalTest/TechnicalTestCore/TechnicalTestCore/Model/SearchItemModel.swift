//
//  SearchItemModelResponse.swift
//  TechnicalTestData
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation
import SwiftUI

public struct SearchItemModel: Codable {
    public var results: [ProductDetail]
    
    public init(results: [ProductDetail]) {
        self.results = results
    }
}
