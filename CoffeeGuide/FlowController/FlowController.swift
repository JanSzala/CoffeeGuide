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
    
    let coffeeNavigationController = UINavigationController()
    let cafeNavigationController = UINavigationController()
}

extension FlowController {
    func navigationControllers() -> [UINavigationController] {
        coffeeNavigationController.viewControllers = [coffeeViewController()]
        coffeeNavigationController.title = "Coffee"
        coffeeNavigationController.navigationBar.isHidden = true
        
        cafeNavigationController.viewControllers = [cafeViewController()]
        cafeNavigationController.title = "Cafe"
        cafeNavigationController.navigationBar.isHidden = true
        
        return [coffeeNavigationController, cafeNavigationController]
    }
    
    func showMenuViewController() {
        let viewModel = dependencyContainer.menuViewModel
        viewModel.addControllers(navControllers: navigationControllers())
        
        let controller = dependencyContainer.menuViewController(with: viewModel)
        
        rootNavigationController.addChild(controller)
    }
    
    func coffeeViewController() -> UIViewController {
        var viewModel = dependencyContainer.coffeeViewModel
        
        viewModel.didSelectCell = { coffeeIndex in
            print("didSelect coffee cell at:" + String(coffeeIndex))
            self.showCoffeeDetailsViewController()
        }
        
        let controller = dependencyContainer.coffeeViewController(with: viewModel)
        
        
        return controller
    }
    
    func showCoffeeDetailsViewController() {
        var viewModel = dependencyContainer.coffeeDetailsViewModel
        
        let controller = dependencyContainer.coffeeDetailsViewController(with: viewModel)
        
        viewModel.didSelectBack = {
            self.rootNavigationController.popViewController(animated: true)
        }
        
        rootNavigationController.pushViewController(controller, animated: true)
    }
    
    func cafeViewController() -> UIViewController {
        let viewModel = dependencyContainer.cafeViewModel
        
        let controller = dependencyContainer.cafeViewController(with: viewModel)
        
        return controller
    }
}
