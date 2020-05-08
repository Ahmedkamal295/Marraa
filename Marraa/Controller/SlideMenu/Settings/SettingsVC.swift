//
//  SettingsVC.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 13.0, *){
                       overrideUserInterfaceStyle = .light
                    }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationControll()
        
    }
    
    public func setNavigationControll(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.title = "الإعدادات"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        addRightBarButtonWithImage(#imageLiteral(resourceName: "Burger Button"))
        self.navigationItem.hidesBackButton = true
    }

}
