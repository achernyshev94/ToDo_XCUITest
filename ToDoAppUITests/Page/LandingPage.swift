//
//  LandingPage.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 16.02.2023.
//

import XCTest

final class LandingPage: CommonPage {
    
    // MARK: - UI elements and variables
    
    private lazy var btnAdd: XCUIElement = {app.buttons["Add"]}()
    
    private lazy var btnTask: XCUIElement = {app.buttons["Work, 1 Tasks"]}()
    
    private lazy var nameOfLandingPageNavbarTitle: XCUIElement = {
        app.navigationBars[nameOfLandingPageNavbarText]
    }()
    
    private let nameOfLandingPageNavbarText = "ToDo"
    
    // MARK: -  Actions
    
    @discardableResult
    func openNewTask() -> Self{
        btnAdd.tapElement()
        return self
    }
    
    @discardableResult
    func openTask() -> Self{
        btnTask.tapElement()
        return self
    }
    
    // MARK: -  Verification

    @discardableResult
    func checkNavbarTitleOnLandingPage() -> Self {
       nameOfLandingPageNavbarTitle
            .assertContains(text: nameOfLandingPageNavbarText)
        return self
    }
}
