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
    
    @IBOutlet weak var collectionView: UICollectionView!
            
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
        collectionView.reloadData()
    }
    
    private func setupCollectionView() {
        let cafeCellNib = UINib(nibName: "CafeCollectionViewCell", bundle: nil)
        collectionView.register(cafeCellNib, forCellWithReuseIdentifier: "CafeCollectionViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CafeCollectionViewCell", for: indexPath)
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
//        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
//        let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
//        return CGSize(width: size, height: size)
        
        return CGSize(width: 180, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 2, left: 10, bottom: 0, right: 10)
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

