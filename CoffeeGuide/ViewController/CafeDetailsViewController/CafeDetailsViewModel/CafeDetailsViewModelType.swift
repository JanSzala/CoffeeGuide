//
//  CafeDetailsViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/02/2024.
//

import Foundation

internal protocol CafeDetailsViewModelType {
    var didSelectBack: (() -> ())? { get set }
}
