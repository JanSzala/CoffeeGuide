//
//  MenuViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import UIKit
import Foundation

internal class MenuViewModel: MenuViewModelType {
    var onCoffeeButtonTapped: (() -> ())?
    var controllers: [UIViewController] = []
    
    func tabBarViewControllers() -> [UIViewController] {
        let controller_1 = UIViewController()
        controller_1.view.backgroundColor = UIColor.blue
        
        let controller_2 = UIViewController()
        controller_2.view.backgroundColor = UIColor.red
        
        return [
            createNavController(for: controller_1, title: "Coffee"),
            createNavController(for: controller_2, title: "Cafe"),
            createNavController(for: UIViewController(), title: "Fav"),
            createNavController(for: UIViewController(), title: "Roasters"),
            createNavController(for: UIViewController(), title: "Profile")
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
            navController.tabBarItem.title = title
            navController.navigationBar.prefersLargeTitles = false
            return navController
        }
}
