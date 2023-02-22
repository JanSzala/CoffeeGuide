//
//  MenuViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation

internal protocol MenuViewModelType {
    var onCoffeeButtonTapped: (() -> ())? { get set }
}
