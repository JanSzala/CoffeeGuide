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
    
    func coffeeDetailsViewController(with viewModel: CoffeeDetailsViewModelType) -> CoffeeDetailsViewController {
        CoffeeDetailsViewController(viewModel: viewModel)
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
    
    func addViewController(with viewModel: AddViewModelType) -> AddViewController {
        AddViewController(viewModel: viewModel)
    }
    
    var addViewModel: AddViewModelType {
        AddViewModel()
    }
    
    func cafeDetailsViewController(with viewModel: CafeDetailsViewModelType) -> CafeDetailsViewController {
        CafeDetailsViewController(viewModel: viewModel)
    }
    
    var cafeDetailsViewModel: CafeDetailsViewModelType {
        CafeDetailsViewModel()
    }
}
