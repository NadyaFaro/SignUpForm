//
//  WelcomeViewController.swift
//  SignUpForm
//
//  Created by Max on 02.10.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userNameForWelcomeLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userNameForWelcomeLabel)!"
    }
}

