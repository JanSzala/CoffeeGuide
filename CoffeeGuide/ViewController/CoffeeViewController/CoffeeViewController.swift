//
//  CoffeeViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 06/09/2022.
//

import Foundation
import UIKit

internal class CoffeeViewController: UIViewController {
    var viewModel: CoffeeViewModelType?
    var coffeeCollectionView: UICollectionView?
        
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
        
//        setCollectionView()
//        setCollectionViewSource()
    }
}

extension CoffeeViewController {
    private func setCollectionViewSource() {
        coffeeCollectionView?.dataSource = self
        coffeeCollectionView?.delegate = self
    }
    
    private func setCollectionView() {
        /*
        let collectionContainerView = UIView()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        let cellWidth = (self.view.frame.width / 2) - 15
        let cellHeight = 220.0
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        
        coffeeCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        coffeeCollectionView?.register(CoffeeCell.self, forCellWithReuseIdentifier: "CoffeeCell")
        coffeeCollectionView?.backgroundColor = UIColor.blue
        coffeeCollectionView?.translatesAutoresizingMaskIntoConstraints = true
        
        guard let collectionView = coffeeCollectionView else {
            fatalError("Could not find CoffeeCollectionView")
        }
        
        collectionContainerView.addSubview(collectionView)
        
        self.view = collectionContainerView
         */
    }
}

extension CoffeeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let coffeeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoffeeCell", for: indexPath)
        
        return coffeeCell
    }
}

extension CoffeeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let coffee = viewModel?.coffeesArray[0] else {
            fatalError("Could not find coffee")
        }
        
        viewModel?.onCellTapped?(coffee)
    }
}
