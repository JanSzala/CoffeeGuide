//
//  MenuViewModelType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import UIKit
import Foundation

internal protocol MenuViewModelType {
    var controllers: [UINavigationController] { get set }
    
    func addControllers(navControllers: [UINavigationController])
}
