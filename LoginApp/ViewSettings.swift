//
//  ViewSettings.swift
//  LoginApp
//
//  Created by Alexey Manokhin on 13.02.2023.
//

import UIKit

func applyGradient(view: UIView) {
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
    
    gradientLayer.frame = view.bounds
    gradientLayer.colors = [firstColor, secondColor]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 0, y: 1)
    
    view.layer.insertSublayer(gradientLayer, at: 0)
}
