//
//  Cafe.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 22/02/2024.
//

import Foundation

class Cafe {
    
    var image: String
    var name: String
    var description: String
    var country: String
    var city: String
    var street: String
    var streetNumber: String
    
    init(image: String, roastingPlant: String, name: String, description: String, country: String, city: String, street: String, streetNumber: String) {
        self.image = image
        self.name = name
        self.description = description
        self.country = country
        self.city = city
        self.street = street
        self.streetNumber = streetNumber
    }
}
