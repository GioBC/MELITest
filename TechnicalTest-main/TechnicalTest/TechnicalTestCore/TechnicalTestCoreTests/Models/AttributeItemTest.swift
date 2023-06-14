//
//  AttributeItemTest.swift
//  TechnicalTestCoreTests
//
//  Created by Giovanny Beltran on 13/06/23.
//

import XCTest
@testable import TechnicalTestCore

class AttributeItemTest: XCTestCase {

    func testAttributeItem_WhenReturnObjectSuccess() {
        let attributeItem = AttributeItem(name: "", value_name: "")
        
        XCTAssertNotNil(attributeItem)
    }

}
