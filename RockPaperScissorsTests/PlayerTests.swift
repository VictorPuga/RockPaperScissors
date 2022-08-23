//
//  PlayerTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

@testable import RockPaperScissors
import XCTest

class PlayerTests: XCTestCase {
  func testRandom1() {
    let move = Player().randomMove()
    let results: [GameMove] = [.rock, .paper, .scissors]

    XCTAssert(results.contains(move))
  }
}
