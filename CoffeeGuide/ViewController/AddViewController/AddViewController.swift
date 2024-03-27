//
//  AddViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 27/03/2024.
//

import UIKit

class AddViewController: UIViewController {    
    var viewModel: AddViewModelType?
    
    init(viewModel: AddViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.viewModel = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private extension AddViewController {
    private func setUpNavBar() {
        self.navigationController?.navigationBar.isHidden = false

        let backButton = UIBarButtonItem(title: viewModel?.backButtonTitle, style: .plain, target: self, action: #selector(didSelectBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didSelectBackButton() {
        viewModel?.didSelectBack?()
    }
}

