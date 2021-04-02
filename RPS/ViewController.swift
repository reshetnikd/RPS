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
    
    @IBAction func chooseRock(_ sender: UIButton) {
        play(Sign.rock)
        updateUI(for: status)
    }
    
    @IBAction func choosePaper(_ sender: UIButton) {
        play(Sign.paper)
        updateUI(for: status)
    }
    
    @IBAction func chooseScissors(_ sender: UIButton) {
        play(Sign.scissors)
        updateUI(for: status)
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        updateUI(for: .start)
    }
    
    var status = GameState.start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(for: .start)
    }
    
    private func play(_ sign: Sign) {
        let opponentSign = randomSign()
        
        status = sign.opponentsTurn(opponentSign)!
        opponentSignLabel.text = opponentSign.emoji
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        if !(rockButton.currentTitle! == sign.emoji) {
            rockButton.isHidden = true
        }
        
        if !(paperButton.currentTitle! == sign.emoji) {
            paperButton.isHidden = true
        }
        
        if !(scissorsButton.currentTitle! == sign.emoji) {
            scissorsButton.isHidden = true
        }
        
        playAgainButton.isHidden = false
    }
    
    private func updateUI(for state: GameState) {
        gameStatusLabel.text = state.description
        
        switch state {
            case .start:
                view.backgroundColor = .gray
            case .lose:
                view.backgroundColor = .yellow
            case .win:
                view.backgroundColor = .green
            case .draw:
                view.backgroundColor = .red
        }
        
        if state == .start {
            opponentSignLabel.text = "🤖"
            playAgainButton.isHidden = true
            rockButton.isEnabled = true
            rockButton.isHidden = false
            paperButton.isEnabled = true
            paperButton.isHidden = false
            scissorsButton.isEnabled = true
            scissorsButton.isHidden = false
        }
    }


}

