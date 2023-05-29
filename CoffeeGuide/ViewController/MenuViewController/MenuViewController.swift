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
        
        guard let controller = viewModel?.controllers.count else {
            fatalError("No tab bar controllers in the View Model")
        }
        
        print("Controller count: \(controller)")
        
        setTabBar()
        insertTabBarControllers()
    }
}

extension MenuViewController {
    private func setTabBar() {
        UITabBar.appearance().barTintColor = UIColor.white
        tabBar.tintColor = UIColor.black
        tabBar.backgroundColor = UIColor.white
    }
    
    private func insertTabBarControllers() {
        guard let controllers = viewModel?.tabBarViewControllers() else {
            fatalError("Could not find tab bar view controllers in viewModel")
        }
        
        viewControllers = controllers
    }
}

private extension MenuViewController {
    private func configureCoffeeButton() {
        let buttonHeight = 50.0
        let buttonWidth = 200.0
        
        let button = UIButton(frame: CGRect(x: (self.view.frame.width * 0.5) - buttonWidth/2, y: 300, width: buttonWidth, height: buttonHeight))
        button.backgroundColor = .red
        button.setTitle("Coffee Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc private func buttonAction(sender: UIButton!) {
        viewModel?.onCoffeeButtonTapped?()
    }
}
