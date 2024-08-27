//
//  Questions.swift
//  Quizzler
//
//  Created by Subhosting's Mac Mini on 17/08/23.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
