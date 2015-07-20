//
//  InventoryViewController.swift
//  GemAuction
//
//  Created by Connor Wybranowski on 7/14/15.
//  Copyright (c) 2015 Wybro. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var inventoryCollectionView: UICollectionView!
    @IBOutlet var userGoldAmountLabel: UILabel!
    var objects = NSMutableArray()
    
    
//    let gemNames = ["Cerulean Diamond", "Coral Diamond", "Vermilion Diamond", "Viridescent Diamond", "Cardinal Ruby", "Stormy Sapphire"]
//    let gemImages = [UIImage(named: "ceruleanDiamond"), UIImage(named: "coralDiamond"), UIImage(named: "vermilionDiamond"), UIImage(named: "viridescentDiamond"), UIImage(named: "cardinalRuby"), UIImage(named: "stormySapphire")]
//    let gemRarities = ["300", "250", "200", "150", "100", "50"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userGoldAmountLabel.text = "\(8500)"
        
        objects.addObject(Gem(gemNumber: 1, size: "normal"))
        objects.addObject(Gem(gemNumber: 2, size: "normal"))
        objects.addObject(Gem(gemNumber: 3, size: "normal"))
        objects.addObject(Gem(gemNumber: 4, size: "normal"))
        objects.addObject(Gem(gemNumber: 5, size: "normal"))
        objects.addObject(Gem(gemNumber: 6, size: "normal"))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return self.gemNames.count
        return self.objects.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = inventoryCollectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! GemCollectionViewCell

        var gem: Gem = objects[indexPath.row] as! Gem
        
        cell.itemNameLabel.text = gem.getName()
        cell.itemRarityLabel.text = gem.getRarity()
        cell.itemImageView.image = gem.getImage()
        
//        cell.itemNameLabel.text = gemNames[indexPath.row]
//        cell.itemRarityLabel.text = gemRarities[indexPath.row]
//        cell.itemImageView.image = gemImages[indexPath.row]
  
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
