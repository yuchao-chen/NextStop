//
//  NextStopTests.swift
//  NextStopTests
//
//  Created by Yuchao CHEN on 15/8/19.
//  Copyright © 2019 Yuchao CHEN. All rights reserved.
//

import XCTest
@testable import NextStop

class NextStopTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: Route class tests
    // Confirm the Route init will return instance if given valid params
    func testRouteValidInitialization() {
        let r0 = Route.init(transportName: "688", stops: ["Ferntree Gully", "Croyton"])
        XCTAssertNotNil(r0)
        
    }
    // Confirm the Route init will return nil if given invalid params
    func testRouteInvalidInitialization() {
        // without transportName
        let r0 = Route.init(transportName: "", stops: ["Ferntree Gully", "Croyton"])
        XCTAssertNil(r0)
        
        // without bus stop
        let r1 = Route.init(transportName: "688", stops: [])
        XCTAssertNil(r1)
        
        // Only starting point
        let r2 = Route.init(transportName: "688", stops: ["Ferntree Gully"])
        XCTAssertNil(r2)
        
        // The destination and starting point is the same
        let r3 = Route.init(transportName: "688", stops: ["Ferntree Gully", "Ferntree Gully"])
        XCTAssertNil(r3)
    }

}
