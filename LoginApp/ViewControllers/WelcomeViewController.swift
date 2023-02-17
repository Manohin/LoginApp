//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
            welcomeLabel.text = "Привет, \(userName ?? "")!"
        
    }
}
