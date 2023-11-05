//
//  UIView+Extension.swift
//  CatStagram
//
//  Created by 정진영 on 2023/10/19.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
