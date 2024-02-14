//
//  DependencyContainer.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import UIKit
import Foundation

internal class DependencyContainer: DependencyContainerType {
    func menuViewController(with viewModel: MenuViewModelType) -> MenuViewController {
        MenuViewController(viewModel: viewModel)
    }
    
    var menuViewModel: MenuViewModelType {
        MenuViewModel()
    }
    
    func coffeeViewController(with viewModel: CoffeeViewModelType) -> CoffeeViewController {
        CoffeeViewController(viewModel: viewModel)
    }
    
    var coffeeViewModel: CoffeeViewModelType {
        CoffeeViewModel()
    }
    
    func cafeViewController(with viewModel: CafeViewModelType) -> CafeViewController {
        CafeViewController(viewModel: viewModel)
    }
    
    var cafeViewModel: CafeViewModelType {
        CafeViewModel()
    }
}
