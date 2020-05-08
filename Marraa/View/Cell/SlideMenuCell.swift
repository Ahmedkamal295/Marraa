//
//  SlideMenuCell.swift
//  Marraa
//
//  Created by Khaled Ghoniem on 12/17/19.
//  Copyright © 2019 Khaled Ghoniem. All rights reserved.
//

import UIKit

class SlideMenuCell: UITableViewCell {

    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(slide:SlideMenuModel){
        self.picImageView.image = slide.pic
        self.titleLabel.text = slide.title
    }
}
