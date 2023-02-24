//
//  MainPage.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 16.02.2023.
//

import XCTest

final class MainPage: CommonPage {
    
    // MARK: - UI elements and variables
        
    private lazy var btnAdd: XCUIElement = {app.buttons["Add"]}()
    
    private lazy var homeTitle: XCUIElement = {app.staticTexts["ToDo_title"]
}()
    
    // MARK: -  Actions
    
    @discardableResult
    func openNewTask() -> Self{
        btnAdd.tap()
        return self
    }
    
    // MARK: -  Verification
    
    func checkTitle() {
        XCTAssertTrue(homeTitle.exists)
    }
}
