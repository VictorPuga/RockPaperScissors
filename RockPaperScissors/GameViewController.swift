//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import UIKit

class GameViewController: UIViewController {
    let game = Game()
    
    @IBOutlet weak var playerPoints: UILabel!
    @IBOutlet weak var cpuPoints: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func rockButtonTap(_ sender: UIButton) {
        game.buttonClicked(.rock)
        resultLabel.text = GameMove.rock.rawValue
    }
    
    @IBAction func paperButtonTap(_ sender: UIButton) {
        game.buttonClicked(.paper)
        resultLabel.text = GameMove.paper.rawValue
    }
    
    @IBAction func scissorsButtonTap(_ sender: UIButton) {
        game.buttonClicked(.scissors)
        resultLabel.text = GameMove.scissors.rawValue
    }
}

