//
//  GameTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

@testable import RockPaperScissors
import XCTest

class GameTests: XCTestCase {
  func testButtonTappedResult() {
    let move: GameMove = .rock
    let winner = Game().buttonTapped(move)
    let results: [Rules.WinnerIndex] = [.one, .two, .tie]

    XCTAssert(results.contains(winner))
  }

  func testButtonTappedPoints() {
    let game = Game()
    let move: GameMove = .rock
    let winner = game.buttonTapped(move)
    switch winner {
    case .one:
      XCTAssertEqual(game.playerPoints, 1, "Player 1 should win")
      XCTAssertEqual(game.cpuPoints, 0, "Player 1 should win")
    case .two:
      XCTAssertEqual(game.playerPoints, 0, "Player 2 should win")
      XCTAssertEqual(game.cpuPoints, 1, "Player 2 should win")
    case .tie:
      XCTAssertEqual(game.playerPoints, 0, "Should be tie")
      XCTAssertEqual(game.cpuPoints, 0, "Should be tie")
    }
  }

  func testResetGame() {
    let game = Game()
    let player = Player()

    for _ in 0 ..< 10 {
      let move = player.randomMove()
      _ = game.buttonTapped(move)
    }

    game.resetGame()

    XCTAssertEqual(game.playerPoints, 0)
    XCTAssertEqual(game.cpuPoints, 0)
  }
}
