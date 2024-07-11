//
//  PhotosPickerDemoUITests.swift
//  PhotosPickerDemoUITests
//
//  Created by Raj Balaiyan on 16/04/2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class AddTestForPlan: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWithFirstPlan() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        let pic2 = app.scrollViews.images.matching(NSPredicate(format: "label CONTAINS 'Photo'")).element(boundBy: 3)
        app.launch()
        app.buttons["profilepic"].tap()
        sleep(10)
        _ = pic2.waitForExistence(timeout: 30)
        pic2.tap()
        XCTAssert(app.buttons["profilepic"].isHittable)
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
