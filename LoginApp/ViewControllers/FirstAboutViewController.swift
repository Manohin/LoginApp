//
//  FirstAboutViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 17.02.2023.
//

import UIKit

final class FirstAboutViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        
    }
    
    
    
}
