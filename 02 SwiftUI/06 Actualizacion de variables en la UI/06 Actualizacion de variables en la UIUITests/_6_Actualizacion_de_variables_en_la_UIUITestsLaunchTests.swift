//
//  _6_Actualizacion_de_variables_en_la_UIUITestsLaunchTests.swift
//  06 Actualizacion de variables en la UIUITests
//
//  Created by Javi on 17/7/25.
//

import XCTest

final class _6_Actualizacion_de_variables_en_la_UIUITestsLaunchTests: XCTestCase {

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
