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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
