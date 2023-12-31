//
//  SearchItemInteractor.swift
//  TechnicalTestCore
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation
import Combine

final public class SearchItemInteractor: AnyInteractor<String, SearchItemModel?> {
    
    private var repository: SearchItemRepositoryType
    
    public init(repository: SearchItemRepositoryType) {
        self.repository = repository
    }
    
    public override func execute(params: String) -> AnyPublisher<SearchItemModel?, Error> {
        
        self.repository.searchItem(item: params.replacingOccurrences(of: " ", with: "&", options: .literal, range: nil))
    }
}
