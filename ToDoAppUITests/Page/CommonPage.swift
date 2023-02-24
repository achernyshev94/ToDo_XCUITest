//
//  CommonPage.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 16.02.2023.
//

import XCTest

class CommonPage {
    
    // MARK: - UI elements and variables
    
    let app = XCUIApplication()
    
    private lazy var btnClose: XCUIElement = {app.buttons["Close"]}()

    // MARK: -  Actions

    @discardableResult
    func closeNewTaskView() -> Self{
        btnClose.tapElement()
        return self
    }
}
