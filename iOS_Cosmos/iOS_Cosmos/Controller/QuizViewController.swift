//
//  QuizViewController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-04-16.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    // MARK: - Object references
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblProgress: UILabel!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    @IBOutlet weak var btnAnswer4: UIButton!
    
    // MARK: - Variables (Global)
    var questionIndex: Int = 0
    var questions = QuestionLibrary().list
    var totalCorrect: Int = 0 // This button keeps the value for the amount of correct answers the person got
    var test = 0
    // MARK: - ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTextFields()
    }
    
    //MARK: - Pressing a button
    // When any of the buttons are pressed
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if questionIndex < questions.count - 1 {
            checkIfCorrect(buttonIndex: sender.tag)
            questionIndex += 1
            updateTextFields()
            
        } else {
            // When the quiz is finished
            // Wait for 1.5 seconds before showing the leaderboard screen
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.performSegue(withIdentifier: "quizFinished", sender: self)
            }
        }
    }
    
    // Update the text fields for the question and buttons (answers)
    func updateTextFields() {
        lblQuestion.text = questions[questionIndex].questionString
        lblProgress.text = "Question nr.: \(questionIndex + 1) / 10"
        
        btnAnswer1.setTitle(questions[questionIndex].answers[0].answerString, for: .normal)
        btnAnswer2.setTitle(questions[questionIndex].answers[1].answerString, for: .normal)
        btnAnswer3.setTitle(questions[questionIndex].answers[2].answerString, for: .normal)
        btnAnswer4.setTitle(questions[questionIndex].answers[3].answerString, for: .normal)
    }
    
    // Checks if the answer is correct. If so, it updates the correct answers varible.
    func checkIfCorrect(buttonIndex: Int) {
        let correctAnswer: Bool = questions[questionIndex].answers[buttonIndex].isCorrect
        
        if correctAnswer == true {
            totalCorrect += 1 // Correct
        } else {
            // False
        }
    }
    
    // MARK: - Quitting the Quiz
    @IBAction func quitQuizPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Navigation
    // When the quiz finishes, send data to leaderboard screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "quizFinished" {
            let leaderboardVC = segue.destination as! LeaderboardViewController
            leaderboardVC.pointsScored = totalCorrect
        }
    }
    
    // When the leaderboard page is finished
    func gotDismissed() {
        dismiss(animated: true, completion: nil)
    }

}
