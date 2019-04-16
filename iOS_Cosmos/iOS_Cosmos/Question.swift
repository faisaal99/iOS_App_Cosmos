//
//  Question.swift
//  iOS_Cosmos
//
//  Created by Amanda Grenander on 2019-04-15.
//  Copyright © 2019 sti. All rights reserved.
//

import Foundation

class Question {
    let questionString: String
    var answers: [Answer] = []
    var answerArray: [String] = []
    var isCorrectArray: [Bool] = []
    
    init(question: String, answerArray: [String], isCorrectArray: [Bool]) {
        questionString = question
        answers.append(Answer(answer: answerArray[0], isCorrect: isCorrectArray[0]))
        answers.append(Answer(answer: answerArray[1], isCorrect: isCorrectArray[1]))
        answers.append(Answer(answer: answerArray[2], isCorrect: isCorrectArray[2]))
        answers.append(Answer(answer: answerArray[3], isCorrect: isCorrectArray[3]))
    }
}

