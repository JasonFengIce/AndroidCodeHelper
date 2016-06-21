//
//  DpiTransformerTests.swift
//  DpiTransformerTests
//
//  Created by huibin on 6/14/16.
//  Copyright © 2016 huibin. All rights reserved.
//

import XCTest
@testable import DpiTransformer

class DpiTransformerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let test = ViewController();
        test.parseXml("/Users/huibin/text.xml")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
