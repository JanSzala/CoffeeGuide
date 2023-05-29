//
//  DependencyContainer.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation

internal class DependencyContainer: DependencyContainerType {
    func menuViewController(with viewModel: MenuViewModelType) -> MenuViewController {
        MenuViewController(viewModel: viewModel)
    }
    
    var menuViewModel: MenuViewModelType {
        let viewModel = MenuViewModel()
        
        viewModel.controllers = [
            coffeeViewController(with: coffeeViewModel),
            cafeViewController(with: cafeViewModel)
            ]
        
        return viewModel
    }
    
    func coffeeViewController(with viewModel: CoffeeViewModelType) -> CoffeeViewController {
        CoffeeViewController(viewModel: viewModel)
    }
    
    var coffeeViewModel: CoffeeViewModelType {
        CoffeeViewModel()
    }
    
    func coffeeDetailsViewController(with viewModel: CoffeeDetailsViewModelType, coffee: Coffee) -> CoffeeDetailsViewController {
        var viewModel = coffeeDetailsViewModel
        viewModel.coffee = coffee
        
        return CoffeeDetailsViewController(viewModel: viewModel)
    }
    
    var coffeeDetailsViewModel: CoffeeDetailsViewModelType {
        CoffeeDetailsViewModel()
    }
    
    func cafeViewController(with viewModel: CafeViewModelType) -> CafeViewController {
        CafeViewController(viewModel: viewModel)
    }
    
    var cafeViewModel: CafeViewModelType {
        CafeViewModel()
    }
}
