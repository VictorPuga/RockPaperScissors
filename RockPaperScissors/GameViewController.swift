//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import UIKit

class GameViewController: UIViewController {
  let game = Game()
    
  @IBOutlet var playerPoints: UILabel!
  @IBOutlet var cpuPoints: UILabel!
  @IBOutlet var resultLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
    
  @IBAction func rockButtonTap(_ sender: UIButton) {
    let winner = game.buttonClicked(.rock)
    updateUI(winner)
  }
    
  @IBAction func paperButtonTap(_ sender: UIButton) {
    let winner = game.buttonClicked(.paper)
    updateUI(winner)
  }
    
  @IBAction func scissorsButtonTap(_ sender: UIButton) {
    let winner = game.buttonClicked(.scissors)
    updateUI(winner)
  }
  
  @IBAction func restartTap(_ sender: UIButton) {
    print("tap")
    game.resetGame()
    updateUI(nil)
  }
  
  func updateUI(_ winner: Rules.WinnerIndex?) {
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
