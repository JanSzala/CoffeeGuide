//
//  MenuViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation
import UIKit

internal class MenuViewController: UITabBarController {
    var viewModel: MenuViewModelType?
    
    // MARK: - Initializers
    
    init(viewModel: MenuViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.viewModel = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertTabBarControllers()
    }
}

private extension MenuViewController {
    private func insertTabBarControllers() {
        guard let controllers = viewModel?.controllers else {
            fatalError("Could not find tab bar view controllers in viewModel")
        }
        
        //Added for tests - please delete later
        print("Controllers count: \(controllers.count)")
        controllers[0].tabBarItem.title = "Coffee"
        controllers[1].tabBarItem.title = "Cafe"
        
        viewControllers = controllers
    }
}
