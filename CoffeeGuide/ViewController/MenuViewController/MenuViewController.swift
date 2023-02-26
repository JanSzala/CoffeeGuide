//
//  MenuViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 08/08/2022.
//

import Foundation
import UIKit

internal class MenuViewController: UIViewController {
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
    }
}

extension MenuViewController {
    func setupView() {
        view.backgroundColor = .blue
        
        configureCoffeeButton()
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
