//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    var userName: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Привет, \(userName ?? "")!"
        view.applyGradient()
    }
}
