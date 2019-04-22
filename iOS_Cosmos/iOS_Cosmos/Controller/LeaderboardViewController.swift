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
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l8: UILabel!
    @IBOutlet weak var l9: UILabel!
    @IBOutlet weak var l10: UILabel!
    
    //MARK: - Global Variables
    var pointsScored = 0
    var playerName: String? // Remove ? later
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Alert with a text-field for the user to enter their name
        let c = UIAlertController(title: "Add Your Name", message: "", preferredStyle: .alert)
        c.addTextField { (tf) in
            tf.placeholder = "Name"
        }
        let submitA = UIAlertAction(title: "Submit", style: .default, handler: nil)
        let cancelA = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        c.addAction(submitA)
        c.addAction(cancelA)
        
        self.present(c, animated: true, completion: nil)
    }
    
    //MARK: - ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblCorrectAnswers.text = "You Got \(pointsScored)/10 Correct!"
        
    }
    
    // MARK: - Dismiss
    //This will dismiss both this VC and the previous VC (Quiz)
    @IBAction func doneWithLeaderboard(_ sender: UIButton) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
