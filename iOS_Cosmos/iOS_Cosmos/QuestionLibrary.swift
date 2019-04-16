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
        list.append(Question(question: "What is the largest planet in the solar system?", answerArray: ["Neptune", "Saturn", "Jupiter", "Uranus"], isCorrectArray: [false, false, true, false]))
         list.append(Question(question: "What is the main cause for Venus high surface temperature?", answerArray: ["Close Distance to Sun", "Dense Atmosphere", "Volcanoes Shooting Hot Steam", "Geothermal Heat"], isCorrectArray: [false, true, false, false]))
        list.append(Question(question: "What is the average surface temperature on Mercury during day?", answerArray: ["430°C", "250°C", "513°C", "1020°C"], isCorrectArray: [true, false, false, false]))
        list.append(Question(question: "What is the Great Red Spot?", answerArray: ["A spot on the sun", "A smudge on the Hubble Telescope", "A storm on Jupiter", "A chunk of red-colored asteroids in the rings of Saturn"], isCorrectArray: [false, false, true, false]))
        list.append(Question(question: "What are the rings of Saturn mostly made of?", answerArray: ["Chunks of metal", "Rock", "Un-identified matter", "Water ice"], isCorrectArray: [false, false, false, true]))
        list.append(Question(question: "How many moons is Pluto known to have?", answerArray: ["5", "0", "1", "3"], isCorrectArray: [true, false, false, false]))
        list.append(Question(question: "What planet has the highest mountain and the deepest valley?", answerArray: ["Earth", "Mars", "Venus", "Mercury"], isCorrectArray: [false, true, false, false]))
        list.append(Question(question: "What is the highest measured wind speeds at Neptune?", answerArray: ["200 km/h", "1030 km/h", "2400 km/h", "457 km/h"], isCorrectArray: [false, false, true, false]))
        list.append(Question(question: "What distance is Uranus from the Sun?", answerArray: ["5290000000 km", "1022900000 km", "4452000000 km", "2871000000 km"], isCorrectArray: [false, false, false, true]))
        list.append(Question(question: "How long is a day on Saturn?", answerArray: ["12 hours & 23 minutes", "24 hours", "10 hours & 47 minutes", "~30 hours"], isCorrectArray: [false, false, true, false]))
    }

}
