//
//  CafeDetailsViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/02/2024.
//

import UIKit

class CafeDetailsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: CafeDetailsViewModelType?

    init(viewModel: CafeDetailsViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.viewModel = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavBar()
    }
}

private extension CafeDetailsViewController {
    private func setUpNavBar() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = "Cafe Details"

        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(didSelectBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didSelectBackButton() {
        viewModel?.didSelectBack?()
    }
}
