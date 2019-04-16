//
//  QuestionLibrary.swift
//  iOS_Cosmos
//
//  Created by Amanda Grenander on 2019-04-15.
//  Copyright © 2019 sti. All rights reserved.
//

import Foundation

class QuestionLibrary {
    var list: [Question] = []
    
    init() {
        list.append(Question(question: "What is the largest planet in the solar system?", answerArray: ["a) Neptune", "b) Saturn", "c) Jupiter", "d) Uranus"], isCorrectArray: [false, false, true, false]))
         list.append(Question(question: "What is the main cause for Venus high surface temperature?", answerArray: ["a) Close distance to sun", "b) Dense atmosphere", "c) Volcanoes shooting hot steam", "d) Thermal heat"], isCorrectArray: [false, true, false, false]))
        list.append(Question(question: "What is the average surface temperature on Mercury during day?", answerArray: ["a) 430°C", "b) 250°C", "c) 513°C", "d) 1020°C"], isCorrectArray: [true, false, false, false]))
        list.append(Question(question: "What is the Great Red Spot?", answerArray: ["a) A spot on the sun", "b) A smudge on the Hubble Telescope", "c) A storm on Jupiter", "d) A chunk of red matter in the rings of Saturn"], isCorrectArray: [false, false, true, false]))
        list.append(Question(question: "What are the rings of Saturn mostly made of?", answerArray: ["a) Chunks of metal", "b) Rock", "c) Un-identified matter", "d) Water ice"], isCorrectArray: [false, false, false, true]))
        list.append(Question(question: "How many moons is Pluto known to have?", answerArray: ["a) 5", "b) 0", "c) 1", "d) 3"], isCorrectArray: [true, false, false, false]))
        list.append(Question(question: "What planet has the highest mountain and the deepest valley?", answerArray: ["a) Earth", "b) Mars", "c) Venus", "d) Mercury"], isCorrectArray: [false, true, false, false]))
        list.append(Question(question: "What is the highest measured wind speeds at Neptune?", answerArray: ["a) 200 km/h", "b) 1030 km/h", "c) 2400 km/h", "d) 457 km/h"], isCorrectArray: [false, false, true, false]))
        list.append(Question(question: "What distance is Uranus from the Sun?", answerArray: ["a) 5290000000 km", "b) 1022900000 km", "c) 4452000000 km", "d) 2871000000 km"], isCorrectArray: [false, false, false, true]))
        list.append(Question(question: "How long is a day on Saturn?", answerArray: ["a) 12 hours & 12 minutes", "b) 24 hours", "c) 10 hours & 47 minutes", "d) 30 hours"], isCorrectArray: [false, false, true, false]))
    }

}
