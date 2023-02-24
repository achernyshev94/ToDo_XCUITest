//
//  NewTaskTest.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 19.02.2023.
//

import XCTest

final class NewTaskTest: CommonTest {
    
    private let newtaskPage = NewTaskPage()
    
    private let landingPage = LandingPage()
    
    /*
     Проверка отображения элементов на экране и создания новой заметки
     */
    
    func testCreateNewTask() {
        landingPage
            .openNewTask()
        newtaskPage
            .checkTaskPlaceholder()
            .checkCategoryPlaceholder()
            .typeSomeText()
            .selectDate()
            .addSomeNote()
            .addSomeCategory()
            .addTask()
        landingPage
            .checkNavbarTitleOnLandingPage()
    }
    
    /*
     Проверка отображения алертов при попытке создать пустую заметку
     */
    
    func testEmptyTask() {
        landingPage
            .openNewTask()
        newtaskPage
            .addTask()
        acceptNoTaskAlert()
        newtaskPage
            .typeSomeText()
            .addTask()
        acceptNoCategoryAlert()
        newtaskPage
            .closeNewTaskView()
    }
}
