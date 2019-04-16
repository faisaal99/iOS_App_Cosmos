//
//  LeaderboardViewController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-04-16.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController {

    //MARK: - Object References
    @IBOutlet weak var lblCorrectAnswers: UILabel!
    
    //MARK: - Global Variables
    var pointsScored = 0
    
    //MARK: - ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblCorrectAnswers.text = "You Got \(pointsScored)/10 Correct!"
    }
    
    // MARK: - Dismiss
    //This will dismiss both this VC and the previous VC
    @IBAction func doneWithLeaderboard(_ sender: UIButton) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
