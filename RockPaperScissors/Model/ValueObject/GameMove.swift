//
//  GameMove.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

import Foundation

/// Possible moves for the game.
///  It has an `Int` raw value to find the results in a matrix.
enum GameMove: Int, CaseIterable {
  case rock = 0
  case paper = 1
  case scissors = 2
}
