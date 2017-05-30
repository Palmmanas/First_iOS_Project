//
//  FeedDetailViewController.swift
//  MyFirstProject
//
//  Created by std110 on 5/30/17.
//  Copyright © 2017 std110. All rights reserved.
//

import UIKit

class FeedDetailViewController: UIViewController {

    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerImgView: UIImageView!
    
    var news:News?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.news = News(title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "หยุด", view: 2, createDate: "29/06/60",techs:"หมวด")
        self.setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onClikSaveButton(_ sender: Any) {
        print("dfoijgdlfigujpdfgipdsf")
    }

    func setupUI(){
        if let news = self.news{
            self.headerImgView.image = news.iconImage
            self.titleLabel.text = news.title
            self.detailTextView.text = news.description
            self.accessoryLabel.text = "\(news.author) * \(news.view) * \(news.createDate)"
        }
        
    }


}
