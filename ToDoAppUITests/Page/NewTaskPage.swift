//
//  NewTaskPage.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 18.02.2023.
//

import XCTest

final class NewTaskPage : CommonPage {
    
    // MARK: - UI elements and variables
    
    private lazy var btnAdd: XCUIElement = {app.buttons["Add Task"]}()
    
    private lazy var addText: XCUIElement = {app.textViews["Task"]}()
    
    private lazy var dataPicker: XCUIElement = {app.datePickers["Select Date"]}()
    
    private lazy var btnMonth: XCUIElement = {app.datePickers.buttons["Month"]}()
    
    private lazy var closeCalendar: XCUIElement = {app.buttons["PopoverDismissRegion"]}()
    
    private lazy var addNote: XCUIElement = {app.textViews["Add Note"]}()

    private lazy var addCategory: XCUIElement = {app.scrollViews["Category"].staticTexts["Work"]}()
    
    private let placeholderTaskText = "What are your planning?"
    
    private let placeholderCategoryText = "Select Category"
    
    // MARK: -  Actions
    
    @discardableResult
    func addTask() -> Self{
        btnAdd.tapElement()
        return self
    }
    
    @discardableResult
    func typeSomeText() -> Self{
        addText.tapElement()
        addText.typeText("New Task")
        return self
    }
    
    @discardableResult
    func selectDate() -> Self{
        let datePickersQuery = app.datePickers.datePickers
        dataPicker.tapElement()
        btnMonth.tapElement()
        datePickersQuery.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "December")
        datePickersQuery.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: "2024")
        closeCalendar.tap()
        return self
    }
    
    @discardableResult
    func addSomeNote() -> Self{
        addNote.tapElement()
        addNote.typeText("New Note")
        return self
    }
    
    @discardableResult
    func addSomeCategory() -> Self{
        addCategory.tapElement()
        return self
    }
    
    // MARK: -  Verification
    
    @discardableResult
    func checkTaskPlaceholder() -> Self {
        app.assertContains(text: placeholderTaskText)
        return self
    }
    
    @discardableResult
    func checkCategoryPlaceholder() -> Self {
        app.assertContains(text: placeholderCategoryText)
        return self
    }
}
