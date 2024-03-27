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
    
    func coffeeDetailsViewController(with viewModel: CoffeeDetailsViewModelType) -> CoffeeDetailsViewController
    var coffeeDetailsViewModel: CoffeeDetailsViewModelType { get }
        
    func cafeViewController(with viewModel: CafeViewModelType) -> CafeViewController
    var cafeViewModel: CafeViewModelType { get }
    
    func addViewController(with viewModel: AddViewModelType) -> AddViewController
    var addViewModel: AddViewModelType { get }
    
    func cafeDetailsViewController(with viewModel: CafeDetailsViewModelType) -> CafeDetailsViewController
    var cafeDetailsViewModel: CafeDetailsViewModelType { get }
}
