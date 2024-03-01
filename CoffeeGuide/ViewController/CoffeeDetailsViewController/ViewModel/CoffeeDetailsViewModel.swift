//
//  CoffeeDetailsViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2024.
//

import UIKit
import Foundation

internal class CoffeeDetailsViewModel: CoffeeDetailsViewModelType {
    var didSelectBack: (() -> ())?
    
    let cafeCellIdentifier = "CoffeeInformationCollectionViewCell"
    let imageCellIdentifier = "ImageCollectionViewCell"
    
    let backButtonTitle = "Back"
    let controllerTitle = "Coffee Details"
    
    var testCoffee = Coffee(image: UIImage(imageLiteralResourceName: "CoffeeFiveElephant"),
                        roastingPlant: "Five Elephant",
                        name: "Brazylia Sitio Canaa Sumatra",
                        description: "This is some sample coffee description used only for testing purposes",
                        country: "Brasil",
                        region: "Mogiana",
                        producer: "João Hamilton",
                        location: "Mogiana",
                        variety: "Sumatra",
                        processingMethod: "Natural")
}
