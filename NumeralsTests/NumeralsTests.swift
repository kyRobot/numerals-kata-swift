//
//  NumeralsTests.swift
//  NumeralsTests
//
//  Created by Kyle Milner on 23/05/2015.
//  Copyright (c) 2015 Kyle Milner. All rights reserved.
//

import UIKit
import XCTest

class NumeralsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNegativeError() {
        if let converted = Numerals.convert(-99) {
            XCTFail("conversion occured on a negative!")
        }
        
    }
    
    func testZerorReturnsEmpty() {
        let converted = Numerals.convert(0)
        let expected = ""
        XCTAssertEqual(converted!, expected, "zero conversion was correct")
    }
    
    func testSingleUnit() {
        let converted = Numerals.convert(1)
        let expected = "I"
        XCTAssertEqual(converted!, expected, "unit conversion was correct")
    }
    
    func test4Substitution() {
        let converted = Numerals.convert(4)
        let expected = "IV"
        print(converted)
        XCTAssertEqual(converted!, expected, "4 substitution conversion was correct")
    }
    
}
