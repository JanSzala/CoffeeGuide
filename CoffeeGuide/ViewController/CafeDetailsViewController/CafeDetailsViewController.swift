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
        setupCollectionView()
        setupCollectionViewFlowLayout()
    }
            
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let cafeCellNib = UINib.init(nibName: viewModel?.cafeCellIdentifier ?? "Cell", bundle: nil)
        collectionView.register(cafeCellNib, forCellWithReuseIdentifier: viewModel?.cafeCellIdentifier ?? "Cell")
        
        let imageCellNib = UINib.init(nibName: viewModel?.imageCellIdentifier ?? "Cell", bundle: nil)
        collectionView.register(imageCellNib, forCellWithReuseIdentifier: viewModel?.imageCellIdentifier ?? "Cell")
    }
    
    private func setupCollectionViewFlowLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

extension CafeDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return cellType(for: indexPath)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing = 28.0
        let cellSide: CGFloat = (collectionView.frame.size.width - spacing)
        
        if indexPath.row == 0 {
            return CGSize(width: cellSide, height: cellSide)
        } else {
            return CGSize(width: cellSide, height: cellSide / 5)
        }
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 2, left: 10, bottom: 0, right: 10)
    }
    
    private func cellType(for indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel?.imageCellIdentifier ?? "Cell", for: indexPath) as! ImageCollectionViewCell
            
            cell.setupImage(image: UIImage(imageLiteralResourceName: "CoffeeFiveElephant"))
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel?.cafeCellIdentifier ?? "Cell", for: indexPath) as! CoffeeInformationCollectionViewCell
            
            if indexPath.row == 1 {
                cell.topLabelText(text: "Producer:")
                cell.bottomLabelText(text: (viewModel?.testCafe.name)!)
            }
            
            return cell
        }
    }
}

private extension CafeDetailsViewController {
    private func setUpNavBar() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = viewModel?.controllerTitle

        let backButton = UIBarButtonItem(title: viewModel?.backButtonTitle, style: .plain, target: self, action: #selector(didSelectBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didSelectBackButton() {
        viewModel?.didSelectBack?()
    }
}
