//
//  CafeViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/11/2022.
//

import Foundation
import UIKit

internal class CafeViewController: UIViewController {
    var viewModel: CafeViewModelType?
        
    // MARK: - Initializers
    
    init(viewModel: CafeViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.viewModel = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        print("Cafe view was loaded")
    }
}
