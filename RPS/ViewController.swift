//
//  ViewController.swift
//  RPS
//
//  Created by Dmitry Reshetnik on 02.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opponentSignLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func chooseSign(_ sender: UIButton) {
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

