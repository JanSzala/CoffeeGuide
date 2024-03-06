//
//  CafeDetailsViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/02/2024.
//

import Foundation
import UIKit

internal class CafeDetailsViewModel: CafeDetailsViewModelType {
    var didSelectBack: (() -> ())?
    
    let cafeCellIdentifier = "CoffeeInformationCollectionViewCell"
    let imageCellIdentifier = "ImageCollectionViewCell"
    
    let backButtonTitle = "Back"
    let controllerTitle = "Cafe Details"
    
    var testCafe = Cafe(image: UIImage(imageLiteralResourceName: "CoffeeFiveElephant"),
                        name: "Typica",
                        description: "Elegant, cosy, warm cafe in the center of Warsaw",
                        country: "Poland",
                        city: "Warsaw",
                        street: "Złota",
                        streetNumber: "34")
}
