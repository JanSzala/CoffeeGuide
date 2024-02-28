//
//  ImageCollectionViewCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 28/02/2024.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupImage(image: UIImage) {
        imageView.image = image
    }
}
