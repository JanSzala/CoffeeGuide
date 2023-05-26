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
        
        setupView()
        
        view.backgroundColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.white
        tabBar.tintColor = UIColor.black
        tabBar.backgroundColor = UIColor.white
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
            navController.tabBarItem.title = title
            navController.navigationBar.prefersLargeTitles = false
            return navController
        }
    
    func setupVCs() {
        let controller_1 = UIViewController()
        controller_1.view.backgroundColor = UIColor.blue
        
        let controller_2 = UIViewController()
        controller_2.view.backgroundColor = UIColor.red
        
            viewControllers = [
                createNavController(for: controller_1, title: "Coffee"),
                createNavController(for: controller_2, title: "Cafe"),
                createNavController(for: UIViewController(), title: "Fav"),
                createNavController(for: UIViewController(), title: "Roasters"),
                createNavController(for: UIViewController(), title: "Profile")
            ]
        }
}

extension MenuViewController {
    func setupView() {
        view.backgroundColor = .blue
        
//        configureCoffeeButton()
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
