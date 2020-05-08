//
//  RoundedView.swift
//  Golden Store
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    @IBInspectable var cornerRaduis: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRaduis
//            self.layer.borderWidth = 2.0
//            self.layer.borderColor = borderColor
//            self.layer.shadowRadius = 3.0
//            self.layer.shadowColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
            shadowView()
        }
    }
    
//    @IBInspectable var borderColor: CGColor = #colorLiteral(red: 0.3993991017, green: 0.7978107929, blue: 0.7646084428, alpha: 1) {
//        didSet {
//            self.layer.borderColor = borderColor
//        }
//    }
    func shadowView(){
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 2
    }
    
    override func awakeFromNib() {
        self.layer.cornerRadius = cornerRaduis
//        self.layer.borderWidth = 2.0
//        self.layer.borderColor = borderColor
//        self.layer.shadowRadius = 3.0
//        self.layer.shadowColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        shadowView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.layer.cornerRadius = cornerRaduis
//        self.layer.borderWidth = 2.0
//        self.layer.borderColor = borderColor
//        self.layer.shadowRadius = 3.0
//        self.layer.shadowColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        shadowView()
    }

}
