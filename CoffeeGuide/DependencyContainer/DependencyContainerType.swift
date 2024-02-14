//
//  DependencyContainerType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation

internal protocol DependencyContainerType {
    func menuViewController(with viewModel: MenuViewModelType) -> MenuViewController
    var menuViewModel: MenuViewModelType { get }
    
    func coffeeViewController(with viewModel: CoffeeViewModelType) -> CoffeeViewController
    var coffeeViewModel: CoffeeViewModelType { get }
        
    func cafeViewController(with viewModel: CafeViewModelType) -> CafeViewController
    var cafeViewModel: CafeViewModelType { get }
}
