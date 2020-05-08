//
//  FAQCell.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit

class FAQCell: UITableViewCell {

    @IBOutlet weak var content: UILabel!
    

    func configureCell(content:String){
        self.content.text = content
    }
}
