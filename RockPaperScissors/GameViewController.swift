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

    @IBAction func rockButton(_ sender: UIButton) {
        print("Rock")
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        print("Paper")
    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        print("Scissors")
    }
}

