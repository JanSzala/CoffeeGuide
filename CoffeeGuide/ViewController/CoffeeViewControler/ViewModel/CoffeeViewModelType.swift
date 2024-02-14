//
//  CoffeeViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2023.
//

import Foundation

internal protocol CoffeeViewModelType {
    var didSelectCell: ((Int) -> ())? { get set }
    
    var cafeCellIdentifier : String { get }
}
