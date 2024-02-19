//
//  MenuViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import UIKit
import Foundation

internal class MenuViewModel: MenuViewModelType {    
    var controllers: [UINavigationController] = []
    

    func addControllers(navControllers: [UINavigationController]) {
        controllers = navControllers
    }
}
