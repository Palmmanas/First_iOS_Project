//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std110 on 5/29/17.
//  Copyright © 2017 std110. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController{

    @IBOutlet weak var tableview: UITableView!
    
    

    
    var newsArray:[News] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableViwe()
        setupTableViweDummyData()
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func setupTableViwe(){
        self.tableview.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    func setupTableViweDummyData(){
        let news:News = News(title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "หยุด", view: 2, createDate: "29/06/60",techs:"หมวด")
        var news2:News = News(title: "Android", description: "555+", iconImage: #imageLiteral(resourceName: "cat"), author: "แจ็ค", view: 9999, createDate: "29/06/60",techs:"หมวด")
    
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news)
        newsArray.append(news)

    }
    
    func toFeedDetailViewController(news: News){
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "FeedDetailViewController") as? FeedDetailViewController{
        viewController.news = news
        self.navigationController?.pushViewController(viewController,animated:  true)

        }

    }
    
}

extension FeedViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        var news:News = newsArray[rowNo]
        cell.setupUI(news: news)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowNo = indexPath.row
        var news:News = newsArray[rowNo]
        print(indexPath.row)
        self.toFeedDetailViewController(news: news)
    }
}
