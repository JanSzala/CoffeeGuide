//
//  CoffeeCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 17/02/2023.
//

import UIKit
import Foundation

class CoffeeCell: UICollectionViewCell {
    var stackView: UIStackView?
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("Custom Cell Init")
        
        configureContetStackView(width: frame.width, height: frame.height)
                               
        guard let contentStackView = stackView else {
            fatalError("Could not find the contentStackView")
        }
        
        contentView.addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(coffeeImageView())
        contentStackView.addArrangedSubview(coffeeManufacturerLabel())
        contentStackView.addArrangedSubview(coffeeNameLabel())
        self.backgroundColor = UIColor.gray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CoffeeCell {
    private func configureContetStackView(width: CGFloat, height: CGFloat) {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.stackView = stackView
    }
    
    private func coffeeImageView() -> UIImageView {
        let coffeeImageView = UIImageView()
        coffeeImageView.image = UIImage(named: "CoffeeFiveElephant")
        
        return coffeeImageView
    }
    
    private func coffeeManufacturerLabel() -> UILabel {
        let coffeeManufacturerLabel = UILabel()
        coffeeManufacturerLabel.text = "Five Elephant"
        coffeeManufacturerLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        return coffeeManufacturerLabel
    }
    
    private func coffeeNameLabel() -> UILabel {
        let coffeeNameLabel = UILabel()
        coffeeNameLabel.text = "Kamwangi AA"
        coffeeNameLabel.font = coffeeNameLabel.font.withSize(14)
        
        return coffeeNameLabel
    }
}
