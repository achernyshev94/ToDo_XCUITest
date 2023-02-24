//
//  TaskListPage.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 19.02.2023.
//

import XCTest

final class TaskListPage: CommonPage {
    
    // MARK: - UI elements and variables
    
    private lazy var btnBack: XCUIElement = {app.buttons["back"]}()
    
    private lazy var emptyCheckbox: XCUIElement = {app.buttons["checkbox"]}()
    
    private lazy var fillCheckbox: XCUIElement = {app.buttons["checkbox_fill"]}()
    
    private let taskText = "New task"

    // MARK: -  Actions
    
    @discardableResult
    func tapCheckbox() -> Self{
        emptyCheckbox.tapElement()
        return self
    }
    
    @discardableResult
    func untapCheckbox() -> Self{
        fillCheckbox.tapElement()
        return self
    }
    
    @discardableResult
    func closeTaskList() -> Self{
        btnBack.tapElement()
        return self
    }
    
    // MARK: -  Verification

    @discardableResult
    func checkTaskText() -> Self {
        app.assertContains(text: taskText)
        return self
    }
    
}
