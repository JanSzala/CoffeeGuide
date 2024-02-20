//
//  CafeViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/11/2022.
//

import Foundation

internal protocol CafeViewModelType {
    var didSelectCell: ((Int) -> ())? { get set }
    
    var cafeCellIdentifier : String { get }
}
