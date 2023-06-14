//
//  HomeViewModelType.swift
//  TechnicalTest
//
//  Created by Giovanny Beltran on 10/06/23.
//

import Foundation

public protocol HomeViewModelType: ObservableObject {
    var state: HomeViewModelState { get set }
    func searchItem()
    func removeQuery()
    func setMessage(message: String)
}
