//
//  Answers.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 13/07/23.
//

import Foundation

struct Answers: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
