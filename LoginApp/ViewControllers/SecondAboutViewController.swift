//
//  SecondAboutViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 18.02.2023.
//

import UIKit

final class SecondAboutViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    
    var user: User!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        storyLabel.text = ""
        storyLabel.animation(typing: "\(user.person.privateStory)", duration: 0.03)
    }
}
