//
//  SearchItemRepositoryStub.swift
//  TechnicalTestCoreTests
//
//  Created by Giovanny Beltran on 13/06/23.
//

import Foundation
import Combine
@testable import TechnicalTestCore

final class SearchItemRepositoryStub {
    static var error: Error!
    static var response: SearchItemModel!
}

extension SearchItemRepositoryStub: SearchItemRepositoryType {
    
    func searchItem(item: String) -> AnyPublisher<SearchItemModel?, Error> {
        
        let searchModel = SearchItemRepositoryStub.response!
        
        let publisher = CurrentValueSubject<SearchItemModel?, Error>(searchModel)
        
        if let error = SearchItemRepositoryStub.error {
            publisher.send(completion: .failure(error))
        }
        
        return publisher.eraseToAnyPublisher()
    }
}
