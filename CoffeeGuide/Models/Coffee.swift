//
//  Coffee.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 17/02/2023.
//

import UIKit
import Foundation

class Coffee {
    
    var image: UIImage
    var roastingPlant: String
    var name: String
    var description: String
    var country: String
    var region: String
    var producer: String
    var location: String
    var variety: String
    var processingMethod: String
    
    init(image: UIImage, roastingPlant: String, name: String, description: String, country: String, region: String, producer: String, location: String, variety: String, processingMethod: String) {
        self.image = image
        self.roastingPlant = roastingPlant
        self.name = name
        self.description = description
        self.country = country
        self.region = region
        self.producer = producer
        self.location = location
        self.variety = variety
        self.processingMethod = processingMethod
    }
}
