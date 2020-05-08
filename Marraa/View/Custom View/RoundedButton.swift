//
//  RoundedButton.swift
//  Golden Store
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRaduis: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRaduis
        }
    }
    override func awakeFromNib() {
        self.layer.cornerRadius = cornerRaduis
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.layer.cornerRadius = cornerRaduis
    }

}
