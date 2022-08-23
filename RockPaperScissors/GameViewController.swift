//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import UIKit

class GameViewController: UIViewController {
  /// Game instance active for all the app's lifespan
  let game = Game()
  
  // MARK: Outlets

  @IBOutlet var playerPoints: UILabel!
  @IBOutlet var cpuPoints: UILabel!
  @IBOutlet var resultLabel: UILabel!
  
  // MARK: Actions
    
  @IBAction func rockButtonTap(_ sender: UIButton) {
    let winner = game.buttonTapped(.rock)
    updateUI(winner)
  }
    
  @IBAction func paperButtonTap(_ sender: UIButton) {
    let winner = game.buttonTapped(.paper)
    updateUI(winner)
  }
    
  @IBAction func scissorsButtonTap(_ sender: UIButton) {
    let winner = game.buttonTapped(.scissors)
    updateUI(winner)
  }
  
  @IBAction func restartTap(_ sender: UIButton) {
    game.resetGame()
    updateUI(nil)
  }
  
  // MARK: Methods
  
  /// Update the view's UI using the game's current values
  /// - Parameter winner: Player that won the round. Can be can be `nil` when restarting the game
  private func updateUI(_ winner: Rules.WinnerIndex?) {
    playerPoints.text = "\(game.playerPoints)"
    cpuPoints.text = "\(game.cpuPoints)"
    
    if let winner = winner {
      switch winner {
        case .one:
          resultLabel.text = "Player 1 won"
        case .two:
          resultLabel.text = "CPU won"
        case .tie:
          resultLabel.text = "Tie"
      }
    } else {
      resultLabel.text = "Tap to play the game"
    }
  }
}
