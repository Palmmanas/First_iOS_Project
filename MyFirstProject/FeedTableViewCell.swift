//
//  FeedTableViewCell.swift
//  MyFirstProject
//
//  Created by std110 on 5/29/17.
//  Copyright © 2017 std110. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconimgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var techsLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI(news:News){
       iconimgView.image = news.iconImage
        titleLabel.text = news.title
        descriptionLabel.text = news.description
       accessoryLabel.text = "\(news.author) * \(news.view) * \(news.createDate)"
        techsLabel.text = news.techs
    }
    
}
