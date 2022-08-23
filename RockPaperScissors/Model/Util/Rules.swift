//
//  Rules.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

import Foundation

/// Class in charge of validating the winner of a round
class Rules {
  /// Result matrix.
  /// Player 1 = rows, Player 2 = columns.
  /// Retrieved from [cs.stanford.edu](https://cs.stanford.edu/people/eroberts/courses/soco/projects/1998-99/game-theory/psr.html).
  private static let matrix: [[WinnerIndex]] = [
    [.tie, .two, .one],
    [.one, .tie, .two],
    [.two, .one, .tie]
  ]

  
    /// Evaluate the result for both player's moves.
    /// - Parameters:
    ///   - player1: First player's move
    ///   - player2: Second player's move
    /// - Returns: Winner of the round
  static func evaluateWinner(_ player1: GameMove, _ player2: GameMove) -> WinnerIndex {
    return matrix[player1.rawValue][player2.rawValue]
  }

  /// Possible match results
  enum WinnerIndex {
    case one
    case two
    case tie
  }
}
