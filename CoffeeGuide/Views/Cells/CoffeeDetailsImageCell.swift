//
//  CoffeeDetailsImageCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 22/02/2023.
//

import UIKit
import Foundation

class CoffeeDetailsImageCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("CoffeeDetailsImageCell Init")
        
        self.contentView.addSubview(configureImageView(width: frame.width, height: frame.height))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CoffeeDetailsImageCell {
    private func configureImageView(width: CGFloat, height: CGFloat) -> UIImageView {
        let coffeeDetailsImageView = UIImageView()
        coffeeDetailsImageView.image = UIImage(named: "CoffeeFiveElephant")
        coffeeDetailsImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        
        return coffeeDetailsImageView
    }
}
