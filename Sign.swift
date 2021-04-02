//
//  Sign.swift
//  RPS
//
//  Created by Dmitry Reshetnik on 02.04.2021.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, scissors, paper
    
    var emoji: String {
        switch self {
            case .rock:
                return "👊🏻"
            case .paper:
                return "✋🏻"
            case .scissors:
                return "✌🏻"
        }
    }
    
    func opponentsTurn(_ sign: Sign) -> GameState? {
        switch self {
            case .rock where sign == .rock:
                return .draw
            case .rock where sign == .paper:
                return .lose
            case .rock where sign == .scissors:
                return .win
            case .paper where sign == .paper:
                return .draw
            case .paper where sign == .scissors:
                return .lose
            case .paper where sign == .rock:
                return .win
            case .scissors where sign == .scissors:
                return .draw
            case .scissors where sign == .rock:
                return .lose
            case .scissors where sign == .paper:
                return .win
            default:
                return nil
        }
    }
}
