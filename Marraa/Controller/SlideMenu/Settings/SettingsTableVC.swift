//
//  SettingsTableVC.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
class SettingsTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 13.0, *){
                       overrideUserInterfaceStyle = .light
                    }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            //terms and rules
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let rightMenuVC = storyBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
            let mainVC = storyBoard.instantiateViewController(withIdentifier: "TermsAndConditionsVC")
            let nav = UINavigationController(rootViewController: mainVC)
            let sideMenu = SlideMenuController(mainViewController: nav, rightMenuViewController: rightMenuVC)
            self.presentDetails(viewControllerToPresent: sideMenu)
        }else if indexPath.row == 1 {
            //faq
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let rightMenuVC = storyBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
            let mainVC = storyBoard.instantiateViewController(withIdentifier: "FAQVC") 
            let nav = UINavigationController(rootViewController: mainVC)
            let sideMenu = SlideMenuController(mainViewController: nav, rightMenuViewController: rightMenuVC)
            self.presentDetails(viewControllerToPresent: sideMenu)
        }else if indexPath.row == 2 {
            //contact us
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let rightMenuVC = storyBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
            let mainVC = storyBoard.instantiateViewController(withIdentifier: "ContactUsVC") as! ContactUsVC
            let nav = UINavigationController(rootViewController: mainVC)
            let sideMenu = SlideMenuController(mainViewController: nav, rightMenuViewController: rightMenuVC)
            self.presentDetails(viewControllerToPresent: sideMenu)
        }else if indexPath.row == 3 {
            //about
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let rightMenuVC = storyBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
            let mainVC = storyBoard.instantiateViewController(withIdentifier: "AboutVC") as! AboutVC
            let nav = UINavigationController(rootViewController: mainVC)
            let sideMenu = SlideMenuController(mainViewController: nav, rightMenuViewController: rightMenuVC)
            self.presentDetails(viewControllerToPresent: sideMenu)
        }else if indexPath.row == 4 {
            //montada
            UIApplication.shared.open(URL(string : "https://www.marraa.com/news/")!, options: [:], completionHandler: { (status) in
                
            })
        }
    }

}
