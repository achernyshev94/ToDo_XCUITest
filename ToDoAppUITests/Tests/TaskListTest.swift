//
//  TaskListTest.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 19.02.2023.
//

import XCTest

final class TaskListTest: CommonTest {
    
    private let taskListPage = TaskListPage()
    
    private let landingPage = LandingPage()
    
    /*
     Переход на экран со списком задач и проверка работы чекбокса 
     */
    
    func testCheckbox() {
        landingPage
            .openTask()
        taskListPage
            .checkTaskText()
            .tapCheckbox()
            .untapCheckbox()
            .closeTaskList()
        landingPage
            .checkNavbarTitleOnLandingPage()
    }
}
