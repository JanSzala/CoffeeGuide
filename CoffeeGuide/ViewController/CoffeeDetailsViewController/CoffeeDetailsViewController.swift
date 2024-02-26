//
//  CoffeeDetailsViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2024.
//

import Foundation
import UIKit

class CoffeeDetailsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
        setUpNavBar()
        setupCollectionView()
        setupCollectionViewFlowLayout()
    }
            
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let cafeCellNib = UINib.init(nibName: "CoffeeCollectionViewCell", bundle: nil)
        collectionView.register(cafeCellNib, forCellWithReuseIdentifier: viewModel?.cafeCellIdentifier ?? "Cell")
    }
    
    private func setupCollectionViewFlowLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

extension CoffeeDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel?.cafeCellIdentifier ?? "Cell", for: indexPath)
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing = 28.0
        let cellSide: CGFloat = (collectionView.frame.size.width - spacing) / 2.0
        return CGSize(width: cellSide, height: cellSide)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 2, left: 10, bottom: 0, right: 10)
    }
}

private extension CoffeeDetailsViewController {
    private func setUpNavBar() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = "Coffee Details"

        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(didSelectBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didSelectBackButton() {
        viewModel?.didSelectBack?()
    }
}
