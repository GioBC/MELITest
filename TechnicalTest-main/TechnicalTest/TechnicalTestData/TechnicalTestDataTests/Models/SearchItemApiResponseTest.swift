//
//  SearchItemApiResponseTest.swift
//  TechnicalTestDataTests
//
//  Created by Giovanny Beltran on 12/06/23.
//

import XCTest
@testable import TechnicalTestData

class SearchItemApiResponseTest: XCTestCase {

    func testSearchItemApiResponse_WhenValidateObjetSuccess() {
        let dataExpectation = DataConstantsTest.searchItemApiResponse
        
        XCTAssertNotNil(dataExpectation)
    }

}
