//
//  SearchItemRepositoryType.swift
//  TechnicalTestCore
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation
import Combine

public protocol SearchItemRepositoryType {
    func searchItem(item: String) -> AnyPublisher<SearchItemModel?, Error>
}
