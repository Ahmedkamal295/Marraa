//
//  AllAdsVC.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class AllAdsVC: UIViewController {
    
    @IBOutlet weak var regularPostsTableView: UITableView!
    @IBOutlet weak var noRegularAdsLabel: UILabel!
    
    var regularPosts = [AdModel]() // 2
    
    
    var currentPage: Int = 1
    var lastPage: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *){
                       overrideUserInterfaceStyle = .light
                    }
        // Do any additional setup after loading the view.
        getData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationControll()
//        if regularPosts.count != 0 {
//            if lastPage == nil || currentPage == lastPage {
//                return
//            }
//            getData()
//        }else {
//            getData()
//        }
    }
    
    public func setNavigationControll(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.title = "كل الإعلانات"
        self.navigationItem.hidesBackButton = true
        addRightBarButtonWithImage(#imageLiteral(resourceName: "Burger Button"))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Search Icon-1"), style: .plain, target: self, action: #selector(searchBtnPressed))
    }
    
    @objc func searchBtnPressed(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SearchVC")
        self.show(vc, sender: nil)
    }
    
    func getData(){
        print(self.currentPage)
//        let body=[
//            "paged":self.currentPage
//        ]
        
        API.POST(url: URLs.allAds, parameters: nil, headers: nil) { (success, value) in
            if success{
                let dict = value
                    
                if let posts = dict["posts"] as? [[String:Any]]{
                    self.noRegularAdsLabel.isHidden = true
                    self.regularPosts = []
                    for p in posts {
                        let id = p["ID"] as? Int ?? 0
                        let date = (p["post_date"] as? String)?.prefix(10) ?? ""
                        let title = p["post_title"] as? String ?? ""
                        let price = p["price"] as? String ?? "0"
                        let location = p["location"] as? String ?? ""
                        let picture = p["thumbnail"] as? String ?? "0"
                        let images = p["images"] as? [String]
                        
                        let re = AdModel(id: id, date: String(date), title: title, price: price, location: location, picture: picture, category: "كل الإعلانات", images: images ?? [""])
                        self.regularPosts.append(re)
                    }
                    //no data
                    if self.regularPosts.count == 0{
                        self.noRegularAdsLabel.isHidden = false
                    }
                    self.regularPostsTableView.reloadData()
                    
                }else{
                    //no data
                    if self.regularPosts.count == 0{
                        self.noRegularAdsLabel.isHidden = false
                    }
                }
            }else {
                let alert = UIAlertController(title:"شبكة الإنترنيت سيئة أو ضعيفة", message: "تفقد اتصالك بالشبكة ثم أعد المحاولة", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "أعد المحاولة", style: UIAlertActionStyle.default, handler: { (ـ) in
                    self.getData()
                }))
                alert.addAction(UIAlertAction(title: "تجاهل", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }
    
}



extension AllAdsVC : UITableViewDataSource , UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return regularPosts.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RegularPostsCell", for: indexPath) as? RegularPostsCell else {return UITableViewCell()}
        let post = regularPosts[indexPath.section]
        cell.configureCell(adModel: post)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let post = regularPosts[indexPath.section]
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "AdvPageVC") as! AdvPageVC
        vc.advId = post.id
        self.show(vc, sender: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        if indexPath.section  == regularPosts.count - 1 {
//            if lastPage == nil || lastPage == currentPage {
////                                return
//                currentPage = currentPage + 1
//                getData()
//
//            }else {
//                currentPage = currentPage + 1
//               getData()
//            }
//
//        }
//    }
}
