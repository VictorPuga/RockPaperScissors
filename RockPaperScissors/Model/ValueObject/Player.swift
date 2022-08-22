//
//  Player.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import Foundation

class Player {
  func randomMove() -> GameMove {
    let move = GameMove.allCases.randomElement()
    return move!
  }
}
