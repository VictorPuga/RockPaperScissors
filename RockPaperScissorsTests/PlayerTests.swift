//
//  PlayerTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

@testable import RockPaperScissors
import XCTest

class PlayerTests: XCTestCase {
  /// Test ID: `P00`. Read the documentation for more.
  func testRandom() {
    let move = Player().randomMove()
    let results: [GameMove] = [.rock, .paper, .scissors]

    XCTAssert(results.contains(move))
  }
}
