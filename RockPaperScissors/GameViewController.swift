//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockButtonTap(_ sender: UIButton) {
        print("Rock")
        
    }
    
    @IBAction func paperButtonTap(_ sender: UIButton) {
        print("Paper")
    }
    @IBAction func scissorsButtonTap(_ sender: UIButton) {
        print("Scissors")
    }
}

