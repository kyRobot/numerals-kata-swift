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
    
    let testTuples = [1:"I", 2: "II", 3: "III", 4:"IV", 5:"V",
        6:"VI", 7:"VII", 8:"VIII", 9:"IX", 10:"X", 11: "XI",
        20: "XX", 27: "XXVII", 29: "XXIX"]
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNegativeError() {
        let converted = Numerals.convert(-1)
        let expected = ""
        XCTAssertEqual(converted, expected, "negative conversion was correct")
        
    }
    
    func testZerorReturnsEmpty() {
        let converted = Numerals.convert(0)
        let expected = ""
        XCTAssertEqual(converted, expected, "zero conversion was correct")
    }
    
    func testCases() {
        for tuple in testTuples {
            let converted = Numerals.convert(tuple.0)
            let expected = tuple.1
            XCTAssertEqual(converted, expected, "conversion was as expected for: \(tuple.0)")
        }
    }
}
