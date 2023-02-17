//
//  SecondAboutViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 18.02.2023.
//

import UIKit

class SecondAboutViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = user.person.privateStory
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
    }
}
