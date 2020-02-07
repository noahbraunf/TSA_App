//
//  TSA_AppTests.swift
//  TSA_AppTests
//
//  Created by Noah Braunfeld on 12/31/19.
//  Copyright © 2019 Noah Braunfeld. All rights reserved.
//

import XCTest
@testable import TSA_App

class TSA_AppTests: XCTestCase {
    override func setUp() {
        print("Test started...")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        print("Test finished...")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssert(1 == 1)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceElementFetcher() {
        // Test performance of loading the JSON file
        self.measure {
            let _ = ElementFetcher().load()
        }
    }
    
    func testExponentiation() {
        // Tests the ability of the exponentize function
        // which is used for the electron config
        let tokens: [Character] = ["a", "b"]
        let exp = TSA_App.exponentize(str: "a01234b56789", matchWith: tokens)
        let correctExp = "a\u{2070}\u{00B9}\u{00B2}\u{00B3}\u{2074}b\u{2075}\u{2076}\u{2077}\u{2078}\u{2079}"
        XCTAssert(exp == correctExp)
    }
    
    func testSigFigs_Addition() {
        // TODO: Finish sig fig
    }
    
    func testSigFigs_Subtraction() {
        // TODO: Finish sig fig
    }
    
    func testSigFigs_Multiplication() {
        // TODO: Finish sig fig
    }
    
    func testSigFigs_Division() {
        // TODO: Finish sig fig
    }
    
    func testSigFigs_Multi() {
        // TODO: Finish sig fig
    }
}
