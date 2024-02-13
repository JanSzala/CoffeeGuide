//
//  CafeCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 13/02/2024.
//

import UIKit

class CafeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cafeBackgroundView: UIView!
    @IBOutlet weak var cafeImageView: UIImageView!
    @IBOutlet weak var cafeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCell()
    }
}

fileprivate extension CafeCollectionViewCell {
    func setupCell() {
        cafeBackgroundView.layer.cornerRadius = 20.0
    }
}
