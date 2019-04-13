//
//  ViewController.swift
//  iOS_Cosmos
//
//  Created by Faisal Akhtar on 2019-03-12.
//  Copyright © 2019 sti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel! // COSMOS-logo
    @IBOutlet weak var btnContinue: UIButton!
    
    var titleCenterX: CGFloat?
    var titleCenterY: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleCenterX = CGFloat(self.view.frame.size.width / 2 - self.lblTitle.frame.size.width / 2)
        titleCenterY = CGFloat(self.view.frame.size.height / 2 - self.lblTitle.frame.size.height / 2)
        
        lblTitle.frame = CGRect(x: titleCenterX!, y: titleCenterY!, width: 174, height: 48)
        btnContinue.alpha = 1
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        UIView.animate(withDuration: 1.2) {
            self.lblTitle.frame = CGRect(x: self.titleCenterX!, y: 90, width: 174, height: 48)
            self.btnContinue.alpha = 0
        }
    }
    
    
}

