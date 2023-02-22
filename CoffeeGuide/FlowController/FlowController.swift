//
//  FlowController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import UIKit
import Foundation

internal class FlowController: FlowControllerType {
    let dependencyContainer: DependencyContainerType
    let rootNavigationController: UINavigationController
    
    // MARK: - Initializers
    
    init(dependencyContainer: DependencyContainerType, rootNavigationController: UINavigationController)  {
        self.dependencyContainer = dependencyContainer
        self.rootNavigationController = rootNavigationController
        
        showMenuViewController()
    }
}

extension FlowController {
    func showMenuViewController() {
        var viewModel = dependencyContainer.menuViewModel
        
        viewModel.onCoffeeButtonTapped = {
            self.showCoffeeViewController()
        }
        
        let controller = dependencyContainer.menuViewController(with: viewModel)
        
        rootNavigationController.addChild(controller)
    }
    
    func showCoffeeViewController() {
        var viewModel = dependencyContainer.coffeeViewModel
        
        viewModel.onCellTapped = { coffee in
            self.showCoffeeDetailsViewController(coffee: coffee)
        }
        
        let controller = dependencyContainer.coffeeViewController(with: viewModel)
        
        rootNavigationController.pushViewController(controller, animated: true)
    }
    
    func showCoffeeDetailsViewController(coffee: Coffee) {
        let viewModel = dependencyContainer.coffeeDetailsViewModel
        
        let controller = dependencyContainer.coffeeDetailsViewController(with: viewModel, coffee: coffee)
        
        rootNavigationController.pushViewController(controller, animated: true)
    }
    
    func showCoffeeDetailsController() {
        
    }
    
    func showCafeViewController() {
        let viewModel = dependencyContainer.cafeViewModel
        
        let controller = dependencyContainer.cafeViewController(with: viewModel)
        
        rootNavigationController.pushViewController(controller, animated: true)
    }
}
