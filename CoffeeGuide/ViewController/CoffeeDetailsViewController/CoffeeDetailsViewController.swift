//
//  CoffeeDetailsViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2024.
//

import UIKit

class CoffeeDetailsViewController: UIViewController {

    var viewModel: CoffeeDetailsViewModelType?
    
    // MARK: - Initializers
    
    init(viewModel: CoffeeDetailsViewModelType) {
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
    
    private func setupBackButton() {
        self.navigationController?.navigationBar.backItem?.title = "Back"
    }
}
