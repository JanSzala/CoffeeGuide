//
//  CafeCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 05/02/2024.
//

import UIKit

class CafeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cafeCollectionViewCell: UICollectionViewCell!
    
    static let identifier = "CafeCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        print("The cell has been loaded")
    }
}
