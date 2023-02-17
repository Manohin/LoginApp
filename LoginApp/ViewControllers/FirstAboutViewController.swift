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
    @IBOutlet var storyLabel: UILabel!
    
    var user: User!
    var story: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        nameLabel.font = .boldSystemFont(ofSize: 24.0)
        nameLabel.text = user.person.fullName
        storyLabel.text = story
        
    }
    
    
    
}
