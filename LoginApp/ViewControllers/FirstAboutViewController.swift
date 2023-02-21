//
//  FirstAboutViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//

import UIKit

final class FirstAboutViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    
    var user: User!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        nameLabel.font = .boldSystemFont(ofSize: 24.0)
        nameLabel.text = user.person.fullName
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        aboutLabel.text = ""
        aboutLabel.animation(typing: "\(user.person.about)", duration: 0.03)
    }
}
