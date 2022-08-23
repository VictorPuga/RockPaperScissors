//
//  Player.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import Foundation

/// CPU Player
class Player {
  /// Generate a random move for the player
  func randomMove() -> GameMove {
    let move = GameMove.allCases.randomElement()
    return move!
  }
}
