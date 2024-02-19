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
        setupTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = true
    }
}

private extension MenuViewController {
    private func insertTabBarControllers() {
        guard let controllers = viewModel?.controllers else {
            fatalError("Could not find tab bar view controllers in viewModel")
        }
        
        viewControllers = controllers
    }
    
    private func setupTabBar() {
        self.tabBar.backgroundColor = .white
        
        let systemFontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18.0)]
        UITabBarItem.appearance().setTitleTextAttributes(systemFontAttributes, for: .normal)
    }
}
