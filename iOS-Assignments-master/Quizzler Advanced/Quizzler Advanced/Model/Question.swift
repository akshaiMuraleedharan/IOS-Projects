//
//  Question.swift
//  Quizzler Advanced
//
//  Created by Subhosting's Mac Mini on 18/08/23.
//

import Foundation

struct Question {
    let question: String
    let answer: [String]
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.answer = a
        self.correct = correctAnswer
    }
}
