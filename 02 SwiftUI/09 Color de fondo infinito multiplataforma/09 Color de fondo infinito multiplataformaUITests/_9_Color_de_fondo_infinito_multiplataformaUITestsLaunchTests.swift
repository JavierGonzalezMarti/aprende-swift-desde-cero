//
//  _9_Color_de_fondo_infinito_multiplataformaUITestsLaunchTests.swift
//  09 Color de fondo infinito multiplataformaUITests
//
//  Created by Javi on 18/7/25.
//

import XCTest

final class _9_Color_de_fondo_infinito_multiplataformaUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
