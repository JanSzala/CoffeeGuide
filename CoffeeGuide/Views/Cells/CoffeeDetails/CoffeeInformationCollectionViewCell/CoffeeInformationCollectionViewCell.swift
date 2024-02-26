//
//  CoffeeInformationCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 26/02/2024.
//

import UIKit

class CoffeeInformationCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupTopLabel()
    }
    
    private func setupTopLabel() {
        topLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
    }
}

extension CoffeeInformationCollectionViewCell {
    func topLabelText(text: String) {
        topLabel.text = text
    }
    
    func bottomLabelText(text: String) {
        bottomLabel.text = text
    }
}
