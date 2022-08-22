//
//  Rules.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

// https://cs.stanford.edu/people/eroberts/courses/soco/projects/1998-99/game-theory/psr.html

import Foundation

/// Class in charge of validating the winner of a round
class Rules {
  private static let matrix: [[WinnerIndex]] = [
    [.tie, .two, .one],
    [.one, .tie, .two],
    [.two, .one, .tie]
  ]

  static func evaluateWinner(_ player1: GameMove, _ player2: GameMove) -> WinnerIndex {
    return matrix[player1.rawValue][player2.rawValue]
  }

  enum WinnerIndex {
    case one
    case two
    case tie
  }
}
