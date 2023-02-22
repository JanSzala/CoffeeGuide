//
//  CoffeeDetailsViewController.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2023.
//

import Foundation
import UIKit

internal class CoffeeDetailsViewController: UIViewController {
    var viewModel: CoffeeDetailsViewModelType?
    var coffeeDetailsCollectionView: UICollectionView?
        
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
        view.backgroundColor = UIColor.red
        
        setCollectionView()
        setCollectionViewSource()
        
        guard let myCoffee = viewModel?.coffee?.name else {
            fatalError("Could not find coffee")
        }
        
        print("Coffee name: \(myCoffee)")
    }
}

extension CoffeeDetailsViewController {
    private func setCollectionViewSource() {
        coffeeDetailsCollectionView?.dataSource = self
        coffeeDetailsCollectionView?.delegate = self
    }
    
    private func setCollectionView() {
        let collectionContainerView = UIView()
        collectionContainerView.backgroundColor = .white
                
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        let cellWidth = self.view.frame.width - 20
        let cellHeight = 400.0
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
                
        coffeeDetailsCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        coffeeDetailsCollectionView?.register(CoffeeDetailsImageCell.self, forCellWithReuseIdentifier: "CoffeeDetailsImageCell")
        coffeeDetailsCollectionView?.backgroundColor = UIColor.blue
        
        collectionContainerView.addSubview(coffeeDetailsCollectionView ?? UICollectionView())
                
        self.view = collectionContainerView
    }
    
}

extension CoffeeDetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let coffeeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoffeeDetailsImageCell", for: indexPath)
        
        return coffeeCell
    }
}

extension CoffeeDetailsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("On cell tapped")
    }
}
