//
//  CoffeeViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 06/09/2022.
//

import Foundation

internal protocol CoffeeViewModelType {
    var onCellTapped: ((Coffee) -> ())? { get set }
    
    var coffeesArray: [Coffee] { get }
}
