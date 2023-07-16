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
        
        
        var formatterQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Error setting formattedQuestion: \(error)")
                return ""
            }
        }
        var answers: [Answers] {
            do {
                let correct = [Answers(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrect = try incorrectAnswer.map { answer in
                    Answers(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                
                let allAnswers = correct + incorrect
                
                return allAnswers.shuffled()
                
            } catch {
                print("Error setting answers \(error)")
                return []
            }
        }
    }
}
