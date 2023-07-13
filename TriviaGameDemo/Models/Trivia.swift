//
//  Trivia.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 14/07/23.
//

import Foundation

struct Trivia: Decodable {
    var result: [Result]
    
    struct Result:Decodable, Identifiable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswer: [String]
    }
}
