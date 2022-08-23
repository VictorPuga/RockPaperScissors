//
//  Game.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import Foundation

/// Application state
class Game {
  var playerPoints = 0
  var cpuPoints = 0

  /// Handle a click by the user.
  /// - Parameter playerMove: Current player's move
  /// - Returns: The winner of the round (may be a tie)
  func buttonClicked(_ playerMove: GameMove) -> Rules.WinnerIndex {
    let winner = makeCPUMove(playerMove)
    updatePoints(winner)

    return winner
  }

  /// Restart the game to its initial state.
  func resetGame() {
    playerPoints = 0
    cpuPoints = 0
  }

  /// Generate a random move and validate the winner.
  /// - Parameter playerMove: Current player's move
  /// - Returns: The winner of the round (may be a tie)
  private func makeCPUMove(_ playerMove: GameMove) -> Rules.WinnerIndex {
    let cpu = Player()
    let cpuMove = cpu.randomMove()
    let winner = Rules.evaluateWinner(playerMove, cpuMove)
    return winner
  }

    /// Update the game points for the winner.
    /// - Parameter winner: Round winner
  private func updatePoints(_ winner: Rules.WinnerIndex) {
    switch winner {
      case .one:
        playerPoints += 1
      case .two:
        cpuPoints += 1
      case .tie:
        break
    }
  }
}
