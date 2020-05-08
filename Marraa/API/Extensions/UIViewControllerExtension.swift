//
//  UIViewControllerExtension.swift
//  Golden Store
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // present
    func presentDetails(viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    // dismiss
    func dismissDetails() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
