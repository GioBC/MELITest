//
//  BaseRepository.swift
//  TechnicalTestData
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation

public class BaseRepository {
    public private(set) var networkService: NetworkServiceType
    
    public init(networkService: NetworkServiceType = NetworkService()) {
        self.networkService = networkService
    }
}
