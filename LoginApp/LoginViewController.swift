//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private var userLogin = "1"
    private var userPassword = "1"
    
    @IBOutlet var userLoginTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userLoginTF.text ?? ""
    }
    
    override func viewDidLoad() {
        applyGradient(view: super.view)
    }
    
    @IBAction func loginButtonTapped() {
        guard userLoginTF.text != "",
              userPasswordTF.text != "" else {
            getAlertMessage(
                title: "⚠️",
                message: "Логин и пароль не могут быть пустыми! Заполните оба поля!"
            )
            return
        }
        
        guard userLoginTF.text == userLogin,
              userPasswordTF.text == userPassword else {
            getAlertMessage(
                title: "Неправильный логин или пароль",
                message: "Пожалуйста, введите корректные данные для входа"
            )
            return
        }
    }
    
    @IBAction func forgotLoginButtonTapped() {
        getAlertMessage(
            title: "Ой!",
            message: "Имя пользователя: \(userLogin) 💡"
        )
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        getAlertMessage(
            title: "Ой!",
            message: "Пароль: \(userPassword) 💡")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userLoginTF.text = ""
        userPasswordTF.text = ""
    }
    
    private func getAlertMessage(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "ОК",
            style: .cancel)
        )
        present(
            alert,
            animated: true,
            completion: ({ self.userPasswordTF.text = "" })
        )
    }
}
