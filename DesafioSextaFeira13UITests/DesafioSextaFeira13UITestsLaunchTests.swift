//
//  DesafioSextaFeira13UITestsLaunchTests.swift
//  DesafioSextaFeira13UITests
//
//  Created by Gabriel Lopes on 17/05/22.
//

import XCTest

class DesafioSextaFeira13UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
