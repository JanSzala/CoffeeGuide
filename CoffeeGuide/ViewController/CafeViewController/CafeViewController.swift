//
//  CafeViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 20/11/2022.
//

import Foundation
import UIKit

internal class CafeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
        setupCollectionView()
        setupCollectionViewFlowLayout()
    }
            
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let cafeCellNib = UINib.init(nibName: viewModel?.cafeCellIdentifier ?? "Cell", bundle: nil)
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

extension CafeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel?.cafeCellIdentifier ?? "Cell", for: indexPath)
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing = 28.0
        let cellSide: CGFloat = (collectionView.frame.size.width - spacing)
        return CGSize(width: cellSide, height: cellSide)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 2, left: 10, bottom: 0, right: 10)
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel?.didSelectCell?(indexPath.row)
    }
}
