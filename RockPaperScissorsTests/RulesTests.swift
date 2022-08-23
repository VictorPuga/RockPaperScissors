//
//  RulesTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

@testable import RockPaperScissors
import XCTest

class RulesTests: XCTestCase {
  func testGameRulesTie() {
    let move1 = GameMove.rock
    let move2 = GameMove.rock

    let result = Rules.evaluateWinner(move1, move2)

    XCTAssertEqual(result, .tie)
  }

  func testGameRulesPlayerOne() {
    let move1 = GameMove.paper
    let move2 = GameMove.rock

    let result = Rules.evaluateWinner(move1, move2)

    XCTAssertEqual(result, .one)
  }

  func testGameRulesPlayerTwo() {
    let move1 = GameMove.rock
    let move2 = GameMove.paper

    let result = Rules.evaluateWinner(move1, move2)

    XCTAssertEqual(result, .two)
  }

  func testGameRulesAllCombinations() {
    let combinations: [(GameMove, GameMove)] = [
      (.rock, .rock), (.rock, .paper), (.rock, .scissors),
      (.paper, .rock), (.paper, .paper), (.paper, .scissors),
      (.scissors, .rock), (.scissors, .paper), (.scissors, .scissors),
    ]

    let expectedResults: [Rules.WinnerIndex] = [
      .tie, .two, .one,
      .one, .tie, .two,
      .two, .one, .tie,
    ]

    for i in 0 ..< combinations.count {
      let (move1, move2) = combinations[i]
      let winner = Rules.evaluateWinner(move1, move2)

      let expected = expectedResults[i]

      XCTAssertEqual(winner, expected, "Inputs: \(move1), \(move2)")
    }
  }
}
