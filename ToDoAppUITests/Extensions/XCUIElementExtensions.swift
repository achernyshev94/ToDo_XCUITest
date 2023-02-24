//
//  XCUIElementExtensions.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 19.02.2023.
//

import XCTest

extension XCUIElement {
        
    func tapElement() {
        checkExistence()
        self.tap()
    }
    
    func checkExistence(_ isExists:Bool = true) {
        XCTAssertEqual(isExists, self.waitForExistence(timeout: 2), "Element exist should be \(isExists) but now is \(self.exists)")
    }
       
    func assertContains(text: String) {
            let predicate = NSPredicate(format: "label CONTAINS[c] %@", text)
            let elementQuery = staticTexts.containing(predicate)
            XCTAssertTrue(elementQuery.count > 0)
        }
}
