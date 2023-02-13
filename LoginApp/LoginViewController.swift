//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private var userName = "1"
    private var userPassword = "1"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text ?? ""
    }
    
    @IBAction func loginButtonTapped() {
        guard userNameTF.text != "" || userPasswordTF.text != "" else {
            present(getAlertMessage(
                title: "⚠️",
                message: "Имя пользователя и пароль не могут быть пустыми! Заполните оба поля!"), animated: true
            )
            userPasswordTF.text = ""
            return
        }
        guard userNameTF.text == userName && userPasswordTF.text == userPassword else {
            present(getAlertMessage(
                title: "Неправильный логин или пароль",
                message: "Пожалуйста, введите корректные данные для входа"), animated: true
            )
            userPasswordTF.text = ""
            return
        }
    }
    
    @IBAction func forgotLoginButtonTapped() {
        present(getAlertMessage(
            title: "Ой!",
            message: "Имя пользователя: \(userName) 💡"), animated: true
        )
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        present(getAlertMessage(
            title: "Ой!",
            message: "Пароль: \(userPassword) 💡"), animated: true
        )
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
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
        style: .cancel)
    )
    return alert
}
