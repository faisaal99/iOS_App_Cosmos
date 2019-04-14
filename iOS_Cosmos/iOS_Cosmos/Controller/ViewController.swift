//
//  ViewController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-03-12.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var cosmosLogo: UIImageView! // COSMOS Image Logo
    
    var titleCenterX: CGFloat?
    var titleCenterY: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //These two find the center of the screen for the logo to be placed.
        titleCenterX = CGFloat(self.view.frame.size.width / 2 - self.cosmosLogo.frame.size.width / 2)
        titleCenterY = CGFloat(self.view.frame.size.height / 2 - self.cosmosLogo.frame.size.height / 2)
        
        //Sets the position of the logo
        //lblTitle.frame = CGRect(x: titleCenterX!, y: titleCenterY!, width: 174, height: 48)
        cosmosLogo.frame = CGRect(x: titleCenterX!, y: titleCenterY!, width: cosmosLogo.frame.size.width, height: cosmosLogo.frame.size.height)
        cosmosLogo.alpha = 1
        btnContinue.alpha = 1
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        
        // Animates the logo to the top (withDuration controls the length of the animation in seconds)
        UIView.animate(withDuration: 0.9) {
            self.cosmosLogo.frame = CGRect(x: self.titleCenterX!, y: 90, width: self.cosmosLogo.frame.size.width, height: self.cosmosLogo.frame.size.height)
            self.cosmosLogo.alpha = 0
            self.btnContinue.alpha = 0
        }
        
        // Waits for the animation to finish before performing the segue to the main menu
        // Make sure the wait is long enough to wait for the animation to finish
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.performSegue(withIdentifier: "goToMainMenu", sender: nil)
        }
    }
}

