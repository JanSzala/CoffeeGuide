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
    
//    func tabBarViewControllers() -> [UIViewController] {
//        guard let controller1 = controllers[0] else {
//            fatalError("Could not find Controller 1 for TabController")
//        }
//
//        guard let controller2 = controllers[1] else {
//            fatalError("Could not find Controller 2 for TabController")
//        }
//
//        return [
//            createNavController(for: controller1, title: "Coffee"),
//            createNavController(for: controller2, title: "Cafe"),
//            createNavController(for: UIViewController(), title: "Fav"),
//            createNavController(for: UIViewController(), title: "Roasters"),
//            createNavController(for: UIViewController(), title: "Profile")
//        ]
//    }
}
