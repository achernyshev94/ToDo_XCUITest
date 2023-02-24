//
//  LandingTest.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 16.02.2023.
//

import XCTest

final class LandingTest: CommonTest {
    
    private let landingPage = LandingPage()
    
    /*
     Проверка отображения элементов на экране и переход на экран создания заметки
     */
    
    func testOpenNewTaskView() {
        landingPage
            .checkNavbarTitleOnLandingPage()
            .openNewTask()
            .closeNewTaskView()
    }
}
