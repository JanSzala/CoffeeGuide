//
//  CafeDetailsViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/02/2024.
//

import Foundation

internal protocol CafeDetailsViewModelType {
    var didSelectBack: (() -> ())? { get set }
    
    var cafeCellIdentifier: String { get }
    var imageCellIdentifier: String { get }
    
    var backButtonTitle: String { get }
    var controllerTitle: String { get }
    
    var testCafe: Cafe { get }
}
