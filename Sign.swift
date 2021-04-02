//
//  Sign.swift
//  RPS
//
//  Created by Dmitry Reshetnik on 02.04.2021.
//

import Foundation

enum Sign {
    case rock, scissors, paper
    
    var emoji: String {
        switch self {
            case .rock:
                return "👊🏻"
            case .scissors:
                return "✌🏻"
            case .paper:
                return "✋🏻"
        }
    }
}
