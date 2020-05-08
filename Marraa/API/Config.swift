//
//  Config.swift
//  Golden Store
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import Foundation

struct URLs {
    
    static let main = "https://www.marraa.net/wp-json/wp/v2/"
    
    /// POST(email, password)
    static let Login = "https://www.marraa.net/wp-json/jwt-auth/v1/token"
    
    //POST
    static let ForgetPassword = main + "forget"
    
    //POST
    static let Register = main+"register"
    
    //GET
    static let GetHome = main+"home"
    
    //POST
    static let AdvPage = main+"adv"
    
    //post
    static let CategoryPage = main+"advcat"
    
    //post
    static let AddFavourite = main+"favadd"
    
    //post
    static let IncreseAdView = main+"advview"
    
    //get
    static let GetMyAds = main+"myads"
    
    //get
    static let GetAboutUs = main+"about"
    
    //Post
    static let ContactUs = main+"contact"
    
    //GET
    static let GetFAQ = main+"faq"
    
    //Get
    static let publish = main+"publish"

    
    //POST
    static let GetFavAds = main+"fav"
    
    //POST
    static let RemoveFavAds = main+"favremove"
    
    //POST
    static let ReportAd = main+"report"
    
    //Post
    static let RateUser = main+"rate"
    
    //POST
    static let GetUserAccountPage = main+"account"
    
    //post
    static let RemoveAdv = main+"removeadv"
    
    //GET
    static let GetRules = main+"rules"
    
    //post
    static let ChangeUserPassword = main+"changepass"
    
    //POST
    static let AdvancedSearch = main+"search"
    
    //post
    static let UpdateUserAccount = main+"account"
    
    //post
    static let GetUserDataWithId = main+"user"
    
    //POST
    static let GetChats = main+"messages"
    
    //Post
    static let SendMessage = main+"sendmessage"
    
    //Post
    static let GetChat = main+"message"
    
    //Post
    static let ReceivedMessages  = main+"receivedmessages"
    
    //Post
    static let PuplishAd = main+"publish"
    
    //post
    static let bidAdv = main+"bid"
    
    //post
    static let EditAdv = main+"editadv"
    
    //post
    static let socialLogin = main+"sociallogin"
    
    //post
    static let featured = main+"featured"
    
    //post
    static let allAds = main+"allads"

}



