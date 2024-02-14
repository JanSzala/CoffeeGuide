//
//  CoffeeViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 14/02/2024.
//

import Foundation
import UIKit

class CoffeeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: CoffeeViewModelType?
    
    // MARK: - Initializers
    
    init(viewModel: CoffeeViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.viewModel = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

extension CoffeeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel?.didSelectCell?(indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 2, left: 10, bottom: 0, right: 10)
    }
}
