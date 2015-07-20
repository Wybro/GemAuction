//
//  Gem.swift
//  GemAuction
//
//  Created by Connor Wybranowski on 7/16/15.
//  Copyright (c) 2015 Wybro. All rights reserved.
//

import UIKit

let blueDiamond = "Cerulean Diamond"
let orangeDiamond = "Coral Diamond"
let redDiamond = "Vermilion Diamond"
let greenDiamond = "Viridescent Diamond"
let ruby = "Cardinal Ruby"
let sapphire = "Stormy Sapphire"

class Gem: NSObject {
    var name: String = ""
    var rarity: Int = 0
    var image: UIImage = UIImage()
    
//    init(gemName: String, gemRarity: Int, gemImage: UIImage){
//        self.name = gemName
//        self.rarity = gemRarity
//        self.image = gemImage
//    }

    init(gemNumber: Int, size: String){
        switch gemNumber {
        case 1:
            self.name = blueDiamond
            self.rarity = 300
            if size == "normal"{
                self.image = UIImage(named: "ceruleanDiamond")!
            }
            else {
                self.image = UIImage(named: "ceruleanDiamond-Small")!
            }
        case 2:
            self.name = orangeDiamond
            self.rarity = 250
            if size == "normal"{
                self.image = UIImage(named: "coralDiamond")!
            }
            else {
                self.image = UIImage(named: "coralDiamond-Small")!
            }
        case 3:
            self.name = redDiamond
            self.rarity = 200
            if size == "normal"{
                self.image = UIImage(named: "vermilionDiamond")!
            }
            else {
                self.image = UIImage(named: "vermilionDiamond-Small")!
            }
        case 4:
            self.name = greenDiamond
            self.rarity = 150
            if size == "normal"{
                self.image = UIImage(named: "viridescentDiamond")!
            }
            else {
                self.image = UIImage(named: "viridescentDiamond-Small")!
            }
        case 5:
            self.name = ruby
            self.rarity = 100
            if size == "normal"{
                self.image = UIImage(named: "cardinalRuby")!
            }
            else {
                self.image = UIImage(named: "cardinalRuby-Small")!
            }
        case 6:
            self.name = sapphire
            self.rarity = 50
            if size == "normal"{
                self.image = UIImage(named: "stormySapphire")!
            }
            else {
                self.image = UIImage(named: "stormySapphire-Small")!
            }
        default:
            break
        }
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getRarity() -> String {
        return self.rarity.description
    }
    
    func getImage() -> UIImage {
        return self.image
    }
}
