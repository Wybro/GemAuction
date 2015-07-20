//
//  AuctionTableViewCell.swift
//  GemAuction
//
//  Created by Connor Wybranowski on 7/19/15.
//  Copyright (c) 2015 Wybro. All rights reserved.
//

import UIKit

class AuctionTableViewCell: UITableViewCell {

    @IBOutlet var itemNameLabel: UILabel!
    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var itemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
