//
//  AddViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 27/03/2024.
//

import Foundation

internal protocol AddViewModelType {
    var didSelectBack: (() -> ())? { get set }
    
    var backButtonTitle: String { get }
}
