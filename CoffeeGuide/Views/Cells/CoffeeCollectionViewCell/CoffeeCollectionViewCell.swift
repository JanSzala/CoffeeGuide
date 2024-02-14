//
//  CoffeeCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 13/02/2024.
//

import UIKit

class CoffeeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var coffeeBackgroundView: UIView!
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var coffeeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCell()
    }
}

fileprivate extension CoffeeCollectionViewCell {
    func setupCell() {
        coffeeBackgroundView.layer.cornerRadius = 20.0
    }
}
