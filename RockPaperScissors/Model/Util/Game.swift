//
//  Game.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import Foundation

class Game {
    func buttonClicked(_ move: GameMove) {
        print(move)
    }
}

enum GameMove: String {
    case rock
    case paper
    case scissors
}
