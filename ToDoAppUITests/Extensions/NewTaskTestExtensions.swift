//
//  NewTaskTestExtensions.swift
//  ToDoAppUITests
//
//  Created by Alexander Chernyshev on 19.02.2023.
//

import XCTest

extension NewTaskTest {
    
    func acceptNoTaskAlert() {
        
         addUIInterruptionMonitor(withDescription: "Please enter Task name") { (alert) -> Bool in
            let alertButton = alert.buttons["Ok"]
            if alertButton.exists {
                alertButton.tap()
                return true
            }
            return false
        }
        app.tap()
    }
    
    func acceptNoCategoryAlert() {
        
         addUIInterruptionMonitor(withDescription: "Please select category") { (alert) -> Bool in
            let alertButton = alert.buttons["Ok"]
            if alertButton.exists {
                alertButton.tap()
                return true
            }
            return false
        }
        app.tap()
    }
}
