//
//  CommonTest.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 16.02.2023.
//

import XCTest

class CommonTest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
        
    }
    
    override class func tearDown() {
        super.tearDown()
    }
}

