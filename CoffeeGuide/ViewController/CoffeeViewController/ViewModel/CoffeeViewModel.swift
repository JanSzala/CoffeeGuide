//
//  CoffeeViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 06/09/2022.
//

import Foundation

internal class CoffeeViewModel: CoffeeViewModelType {
    var onCellTapped: ((Coffee) -> ())?
    
    var coffeesArray: [Coffee] = [Coffee(image: "CoffeeFiveElephant",
                                         roastingPlant: "test",
                                         name: "test",
                                         description: "test",
                                         country: "test",
                                         region: "test",
                                         producer: "test",
                                         location: "test",
                                         variety: "test",
                                         processingMethod: "test")]
}
