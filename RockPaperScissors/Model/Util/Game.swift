//
//  Game.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import Foundation

class Game {
  let cpu = Player()
  var playerPoints = 0
  var cpuPoints = 0

  func buttonClicked(_ playerMove: GameMove) -> Rules.WinnerIndex {
    let winner = makeCPUMove(playerMove)
    updatePoints(winner)
    
    return winner
  }

  func resetGame() {
    playerPoints = 0
    cpuPoints = 0
  }

  private func makeCPUMove(_ playerMove: GameMove) -> Rules.WinnerIndex {
    let cpuMove = cpu.randomMove()
    let winner = Rules.evaluateWinner(playerMove, cpuMove)
    return winner
  }

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
