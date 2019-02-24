//  RestrictNumberOfCharactersInTextField.swift
//  RestrictCharactersInTextField
//  Created by Ranjeet Raushan on 14/01/19.
//  Copyright © 2019 vaayoo. All rights reserved.

import Foundation
import  UIKit

private var __maxLenghts = [UITextField: Int]()
extension UITextField{
    @IBInspectable var maxLengths: Int{
        get{
            guard let l = __maxLenghts[self] else{
                return 150
            }
            return l
        }
        set {
            __maxLenghts[self] = newValue; addTarget(self, action: #selector(fix), for: .editingChanged)
        }
    }
    @objc func fix(textField: UITextField) {
        let t = textField.text
        textField.text = t?.safelyLimitedTo(length: maxLengths)
    }
}
extension String{
    func safelyLimitedTo(length n: Int) -> String{
        if(self.count <= n){
            return self
        }
        return String(Array(self).prefix(upTo:n))
    }
}
