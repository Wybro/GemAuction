//
//  GemCollectionViewCell.swift
//  GemAuction
//
//  Created by Connor Wybranowski on 7/14/15.
//  Copyright (c) 2015 Wybro. All rights reserved.
//

import UIKit

class GemCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var itemNameLabel: UILabel!
    @IBOutlet var itemRarityLabel: UILabel!
    @IBOutlet var itemsForSaleAmountLabel: UILabel!
    
    @IBAction func incrementForSaleAmount(sender: AnyObject) {
        self.itemsForSaleAmountLabel.text = (self.itemsForSaleAmountLabel.text!.toInt()! + 1).description
    }
    @IBAction func decrementForSaleAmount(sender: AnyObject) {
        self.itemsForSaleAmountLabel.text = (self.itemsForSaleAmountLabel.text!.toInt()! - 1).description
    }
}
