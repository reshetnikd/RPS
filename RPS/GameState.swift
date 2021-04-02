//
//  GameState.swift
//  RPS
//
//  Created by Dmitry Reshetnik on 02.04.2021.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var description: String {
        switch self {
            case .start:
                return "Rock, Paper, Scissors?"
            case .win:
                return "You win!"
            case .lose:
                return "You lose!"
            case .draw:
                return "Draw!"
        }
    }
}
