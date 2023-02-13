//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func forgotLoginButtonTapped(_ sender: UIButton) {
        present(
            getAlertMessage(
                title: "Ой!",
                message: "Имя пользователя: 111"
            ),
            animated: true
        )
    }
    
    @IBAction func forgotPassButtonTapped(_ sender: UIButton) {
        present(
            getAlertMessage(
                title: "Ой!",
                message: "Пароль: 111"),
            animated: true)
    }
}

private func getAlertMessage(title: String, message: String) -> UIAlertController {
    let alert = UIAlertController(
        title: title,
        message: message,
        preferredStyle: .alert
    )
    alert.addAction(UIAlertAction(
        title: "ОК",
        style: .cancel,
        handler: nil)
    )
    return alert
}
