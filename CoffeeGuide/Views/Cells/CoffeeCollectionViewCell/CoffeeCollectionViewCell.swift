//
//  CoffeeCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 13/02/2024.
//

import UIKit

class CoffeeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var coffeeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        coffeeLabel.text = "Dupa"
    }

}
