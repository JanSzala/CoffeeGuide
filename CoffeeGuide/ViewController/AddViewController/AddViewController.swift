//
//  AddViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 27/03/2024.
//

import UIKit

class AddViewController: UIViewController {  
    @IBOutlet weak var coffeeButton: UIButton!
    @IBOutlet weak var cafeButton: UIButton!
    
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
        
        setupButtons()
    }
    
    private func setupButtons() {
        coffeeButton.addTarget(self, action:#selector(self.coffeeButtonClicked), for: .touchUpInside)
        cafeButton.addTarget(self, action:#selector(self.cafeButtonClicked), for: .touchUpInside)
    }
}

fileprivate extension AddViewController {
    @objc func coffeeButtonClicked() {
        print("Coffee Button Clicked")
    }
    
    @objc func cafeButtonClicked() {
        print("Cafe Button Clicked")
    }
}
