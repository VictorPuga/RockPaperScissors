//
//  RockPaperScissorsUITests.swift
//  RockPaperScissorsUITests
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import XCTest

class RockPaperScissorsUITests: XCTestCase {
  override func setUpWithError() throws {
    continueAfterFailure = false
  }

//  func testLaunchPerformance() throws {
//    // This measures how long it takes to launch your application.
//    measure(metrics: [XCTApplicationLaunchMetric()]) {
//      XCUIApplication().launch()
//    }
//  }

  /// Test ID: `S00`. Read the documentation for more.
  func testInitialPoints() {
    let app = XCUIApplication()
    app.launch()
    let playerPoints = app.staticTexts["playerPointsLabel"]
    let cpuPoints = app.staticTexts["cpuPointsLabel"]
    let resultLabel = app.staticTexts["resultLabel"]

    XCTAssertEqual(playerPoints.label, "0")
    XCTAssertEqual(cpuPoints.label, "0")
    XCTAssertEqual(resultLabel.label, "Tap to play the game")
  }

  /// Test ID: `S01`. Read the documentation for more.
  func testRockButtonTap() {
    let app = XCUIApplication()
    app.launch()
    let playerPoints = app.staticTexts["playerPointsLabel"]
    let cpuPoints = app.staticTexts["cpuPointsLabel"]

    for _ in 0 ..< 10 {
      app.buttons["rockButton"].tap()
    }

    XCTAssertNotEqual(playerPoints.label, "0")
    XCTAssertNotEqual(cpuPoints.label, "0")
  }

  /// Test ID: `S02`. Read the documentation for more.
  func testPaperButtonTap() {
    let app = XCUIApplication()
    app.launch()
    let playerPoints = app.staticTexts["playerPointsLabel"]
    let cpuPoints = app.staticTexts["cpuPointsLabel"]

    for _ in 0 ..< 10 {
      app.buttons["paperButton"].tap()
    }

    XCTAssertNotEqual(playerPoints.label, "0")
    XCTAssertNotEqual(cpuPoints.label, "0")
  }

  /// Test ID: `S03`. Read the documentation for more.
  func testScissorsButtonTap() {
    let app = XCUIApplication()
    app.launch()
    let playerPoints = app.staticTexts["playerPointsLabel"]
    let cpuPoints = app.staticTexts["cpuPointsLabel"]

    for _ in 0 ..< 10 {
      app.buttons["scissorsButton"].tap()
    }

    XCTAssertNotEqual(playerPoints.label, "0")
    XCTAssertNotEqual(cpuPoints.label, "0")
  }

  /// Test ID: `S04`. Read the documentation for more.
  func testResetGame() {
    let app = XCUIApplication()
    app.launch()
    let playerPoints = app.staticTexts["playerPointsLabel"]
    let cpuPoints = app.staticTexts["cpuPointsLabel"]
    let resultLabel = app.staticTexts["resultLabel"]

    for _ in 0 ..< 10 {
      app.buttons["rockButton"].tap()
    }

    app.buttons["restartButton"].tap()

    XCTAssertEqual(playerPoints.label, "0")
    XCTAssertEqual(cpuPoints.label, "0")
    XCTAssertEqual(resultLabel.label, "Tap to play the game")
  }
}
