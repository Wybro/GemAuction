//
//  AuctionHouseViewController.swift
//  GemAuction
//
//  Created by Connor Wybranowski on 7/19/15.
//  Copyright (c) 2015 Wybro. All rights reserved.
//

import UIKit

class AuctionHouseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    @IBOutlet var auctionHouseTableView: UITableView!
    var resultSearchController = UISearchController()
    var gemsListed = [Gem]()
    var filteredGemsListed = [Gem]()
    
    var prices = ["680", "560", "450", "410", "355", "250", "200"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gemsListed.append(Gem(gemNumber: 1, size: "small"))
        gemsListed.append(Gem(gemNumber: 2, size: "small"))
        gemsListed.append(Gem(gemNumber: 3, size: "small"))
        gemsListed.append(Gem(gemNumber: 4, size: "small"))
        gemsListed.append(Gem(gemNumber: 5, size: "small"))
        gemsListed.append(Gem(gemNumber: 6, size: "small"))
        gemsListed.append(Gem(gemNumber: 1, size: "small"))
        
        self.resultSearchController = UISearchController(searchResultsController: nil)
        self.resultSearchController.searchResultsUpdater = self
        self.resultSearchController.dimsBackgroundDuringPresentation = false
        self.resultSearchController.searchBar.sizeToFit()
        self.resultSearchController.searchBar.tintColor = UIColor.whiteColor()
//        self.resultSearchController.searchBar.backgroundColor = redColor
        self.resultSearchController.searchBar.barTintColor = redColor
//        for subView in self.resultSearchController.searchBar.subviews {
//            for subSubView in subView.subviews {
//                if let textField = subSubView as? UITextField {
//                    textField.attributedPlaceholder = NSAttributedString(string: NSLocalizedString("Search", comment: ""), attributes: [NSForegroundColorAttributeName: redColor])
//                    textField.textColor = redColor
//                }
//            }
//        }
        self.auctionHouseTableView.tableHeaderView = self.resultSearchController.searchBar
        
        self.auctionHouseTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.resultSearchController.active {
            return self.filteredGemsListed.count
        }
        else {
          return self.gemsListed.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = auctionHouseTableView.dequeueReusableCellWithIdentifier("auctionCell", forIndexPath: indexPath) as! AuctionTableViewCell

        var gem: Gem
        
        if self.resultSearchController.active {
            gem = filteredGemsListed[indexPath.row] as Gem
        }
        else {
            gem = gemsListed[indexPath.row] as Gem
        }
        
        cell.itemNameLabel.text = gem.getName()
        cell.itemImageView.image = gem.getImage()
        cell.itemPriceLabel.text = prices[indexPath.row]
        
        return cell
    }

    func updateSearchResultsForSearchController(searchController: UISearchController) {
        self.filteredGemsListed.removeAll(keepCapacity: false)
        
        var filteredArray = self.gemsListed.filter { (gem: Gem) -> Bool in
            return gem.getName().lowercaseString.rangeOfString(searchController.searchBar.text.lowercaseString, options: nil, range: nil, locale: nil) != nil
        }
        
        self.filteredGemsListed = filteredArray as [Gem]
        self.auctionHouseTableView.reloadData()
    }
    

}
