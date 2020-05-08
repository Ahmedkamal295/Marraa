//
//  FAQContainerVC.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit

class FAQContainerVC: UIViewController {

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
        navigationItem.title = "الأسئلة والأجوبة"
        addRightBarButtonWithImage(#imageLiteral(resourceName: "Burger Button"))
        self.navigationItem.hidesBackButton = false
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "path-10"), style: .plain, target: self, action: #selector(backBtn))
    }
    @objc func backBtn(){
        self.dismiss(animated: true, completion: nil)
    }
}
