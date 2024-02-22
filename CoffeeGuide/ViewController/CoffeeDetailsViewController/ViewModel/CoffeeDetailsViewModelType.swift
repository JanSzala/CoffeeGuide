//
//  CoffeeDetailsViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2024.
//

import Foundation

internal protocol CoffeeDetailsViewModelType {
    var didSelectBack: (() -> ())? { get set }
}