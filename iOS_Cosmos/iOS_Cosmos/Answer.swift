//
//  Answer.swift
//  iOS_Cosmos
//
//  Created by Amanda Grenander on 2019-04-15.
//  Copyright © 2019 sti. All rights reserved.
//

import Foundation

class Answer {
    let answerString: String
    let isCorrect: Bool
    
    init(answer: String, isCorrect: Bool) {
        answerString = answer
        self.isCorrect = isCorrect
    }
}
