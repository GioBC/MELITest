//
//  XCTestCaseExtension.swift
//  TechnicalTestDataTests
//
//  Created by Giovanny Beltran on 12/06/23.
//

import Foundation
import XCTest
import Combine

public extension XCTestCase {
    func evalValidResponseTest<T: Publisher>(publisher: T?) -> (expectations: [XCTestExpectation], cancellable: AnyCancellable?) {
        XCTAssertNotNil(publisher)

        let expectationFinished = expectation(description: "finished")
        let expectationReceive = expectation(description: "receiveValue")
        let expectationFailure = expectation(description: "failure")
        expectationFailure.isInverted = true

        let cancellable = publisher?
            .first()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("--TEST ERROR--")
                    print(error.localizedDescription)
                    print("------")
                    expectationFailure.fulfill()
                case .finished:
                    expectationFinished.fulfill()
                }
            }, receiveValue: { response in
                XCTAssertNotNil(response)
                print(response)
                expectationReceive.fulfill()
            })
        return (expectations: [expectationFinished, expectationReceive, expectationFailure],
                cancellable: cancellable)
    }

    func evalInvalidResponseTest<T: Publisher>(publisher: T?) -> (expectations: [XCTestExpectation], cancellable: AnyCancellable?) {
        XCTAssertNotNil(publisher)

        let expectationFinished = expectation(description: "Invalid.finished")
        expectationFinished.isInverted = true
        let expectationReceive = expectation(description: "Invalid.receiveValue")
        expectationReceive.isInverted = true
        let expectationFailure = expectation(description: "Invalid.failure")

        let cancellable = publisher?
            .first()
            .sink(receiveCompletion: { completion in
            switch completion {
            case .failure(let error):
                print("--TEST FULFILLED--")
                print(error.localizedDescription)
                print("------")
                expectationFailure.fulfill()
            case .finished:
                expectationFinished.fulfill()
            }
        }, receiveValue: { response in
            XCTAssertNotNil(response)
            print(response)
            expectationReceive.fulfill()
        })
        return (expectations: [expectationFinished, expectationReceive, expectationFailure],
                cancellable: cancellable)
    }
}
