//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 12.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userLoginTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.applyGradient()
        
        userLoginTF.text = user.login
        userPasswordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
                welcomeVC.view.applyGradient()
                welcomeVC.title = "Добро пожаловать"
            } else if let secondAboutVC = viewController as? SecondAboutViewController {
                secondAboutVC.user = user
                secondAboutVC.view.applyGradient()
                secondAboutVC.title = "Подробнее"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let firstAboutVC = navigationVC.topViewController as? FirstAboutViewController else { return }
                firstAboutVC.user = user
                firstAboutVC.view.applyGradient()
                firstAboutVC.title = "Обо мне"
            }
        }
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
        
        guard userLoginTF.text == user.login,
              userPasswordTF.text == user.password else {
            getAlertMessage(
                title: "Неправильный логин или пароль",
                message: "Пожалуйста, введите корректные данные для входа"
            )
            return
        }
        performSegue(withIdentifier: "segueIdentifier", sender: nil)
    }
    
    @IBAction func forgotLoginButtonTapped() {
        getAlertMessage(
            title: "Ой!",
            message: "Имя пользователя: \(user.login) 💡"
        )
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        getAlertMessage(
            title: "Ой!",
            message: "Пароль: \(user.password) 💡")
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
            style: .cancel, handler: { _ in
                self.userPasswordTF.text = ""
            }
        )
        )
        present(
            alert,
            animated: true
        )
    }
}

extension UIView {
    func applyGradient() {
        let firstColor = UIColor(
            red: 255 / 255,
            green: 153 / 255,
            blue: 255 / 255,
            alpha: 1).cgColor
        
        let secondColor = UIColor(
            red: 102 / 255,
            green: 102 / 255,
            blue: 255 / 255,
            alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [firstColor, secondColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UILabel {
    func animation(typing value: String, duration: Double){
        for char in value {
            self.text?.append(char)
            RunLoop.current.run(until: Date() + duration)
        }
    }
}
