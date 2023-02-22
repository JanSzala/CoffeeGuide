//
//  FlowControllerType.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation
import UIKit

internal protocol FlowControllerType {
    var rootNavigationController: UINavigationController { get }
    
    func showMenuViewController()
    func showCoffeeViewController()
    func showCoffeeDetailsViewController(coffee: Coffee)
    func showCafeViewController()
}
