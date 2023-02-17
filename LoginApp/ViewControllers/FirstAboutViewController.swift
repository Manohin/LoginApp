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
    var about: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        nameLabel.font = .boldSystemFont(ofSize: 24.0)
        nameLabel.text = user.person.fullName
        aboutLabel.text = "Имя: \(user.person.name)\nФамилия: \(user.person.secondName)\nВозраст: \(user.person.yearsOld) года\nСтрана проживания: \(user.person.country)\nГород: \(user.person.city)\n\nУзнать больше можно, нажав по вкладке 'Подробнее' в правом нижнем углу экрана 😉"

    }
    
    
    
}
