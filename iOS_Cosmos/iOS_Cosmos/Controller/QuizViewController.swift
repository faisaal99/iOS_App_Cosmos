//
//  QuizViewController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-04-16.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblProgress: UILabel!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    @IBOutlet weak var btnAnswer4: UIButton!
    
    var questionIndex: Int = 0
    var questions = QuestionLibrary().list
    var totalCorrect: Int = 0 // This button keeps the value for the amount of correct answers the person got
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTextFields()
        //print(questions[0].answers.count)
    }
    
    // When any of the buttons are pressed
    @IBAction func answerPressed(_ sender: UIButton) {
        //questionIndex += 1
        
        if questionIndex < questions.count - 1 {
            //print("Sender.tag is: \(sender.tag)") // Only for debugging
            checkIfCorrect(buttonIndex: sender.tag)
            questionIndex += 1
            updateTextFields()
            
        } else {
            // When the quiz is finished
            print("You finished!")
            performSegue(withIdentifier: "quizFinished", sender: self)
        }
    }
    
    // Update the text fields for the question and buttons (answers)
    func updateTextFields() {
        print("The Answers are: \(questions[questionIndex].answers[0].answerString) (\(questions[questionIndex].answers[0].isCorrect))")
        print("The Answers are: \(questions[questionIndex].answers[1].answerString) (\(questions[questionIndex].answers[1].isCorrect))")
        print("The Answers are: \(questions[questionIndex].answers[2].answerString) (\(questions[questionIndex].answers[2].isCorrect))")
        print("The Answers are: \(questions[questionIndex].answers[3].answerString) (\(questions[questionIndex].answers[3].isCorrect))")
        
        lblQuestion.text = questions[questionIndex].questionString
        lblProgress.text = "\(questionIndex + 1) / 10"
        
        btnAnswer1.setTitle(questions[questionIndex].answers[0].answerString, for: .normal)
        btnAnswer2.setTitle(questions[questionIndex].answers[1].answerString, for: .normal)
        btnAnswer3.setTitle(questions[questionIndex].answers[2].answerString, for: .normal)
        btnAnswer4.setTitle(questions[questionIndex].answers[3].answerString, for: .normal)
    }
    
    // Checks if the answer is correct. If so, it updates the correct answers varible.
    func checkIfCorrect(buttonIndex: Int) {
        print("The value passed through was: \(buttonIndex) and that is: \(questions[questionIndex].answers[buttonIndex].answerString)")
        let correctAnswer: Bool = questions[questionIndex].answers[buttonIndex].isCorrect
        
        if correctAnswer == true {
            print("Correct")
            totalCorrect += 1
        } else {
            print("False")
        }
    }
    
    // When the quiz finishes, send data to leaderboard screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "quizFinished" {
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
