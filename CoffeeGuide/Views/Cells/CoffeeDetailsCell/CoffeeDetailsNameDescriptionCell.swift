//
//  CoffeeDetailsNameDescriptionCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 22/02/2023.
//

import UIKit
import Foundation

class CoffeeDetailsNameDescriptionCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("CoffeeDetailsNameDescriptionCell Init")
        
        let contentStackView = configureStackView(width: frame.width, height: frame.height)
                
        contentView.addSubview(contentStackView)
        contentStackView.addArrangedSubview(configureCoffeeManufacturerLabel())
        contentStackView.addArrangedSubview(configureCoffeeNameLabel())
        contentStackView.addArrangedSubview(configureDescriptionTextView())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CoffeeDetailsNameDescriptionCell {
    private func configureStackView(width: CGFloat, height: CGFloat) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        stackView.backgroundColor = UIColor.brown
        return stackView
    }
    
    private func configureCoffeeManufacturerLabel() -> UILabel {
        let coffeeManufacturerLabel = UILabel()
        coffeeManufacturerLabel.text = "FIVE ELEPHANT"
        coffeeManufacturerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        coffeeManufacturerLabel.textColor = UIColor.white
        coffeeManufacturerLabel.addConstraint(coffeeManufacturerLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return coffeeManufacturerLabel
    }
    
    private func configureCoffeeNameLabel() -> UILabel {
        let coffeeNameLabel = UILabel()
        coffeeNameLabel.text = "Kamwangi AA"
        coffeeNameLabel.font = coffeeNameLabel.font.withSize(16)
        coffeeNameLabel.textColor = UIColor.white
        coffeeNameLabel.addConstraint(coffeeNameLabel.heightAnchor.constraint(equalToConstant: 20))
        
        return coffeeNameLabel
    }
    
    private func configureDescriptionTextView() -> UITextView {
        let descriptionTextView = UITextView()
        descriptionTextView.backgroundColor = UIColor.brown
        descriptionTextView.textColor = UIColor.white
        descriptionTextView.textAlignment = .justified
        descriptionTextView.font = UIFont.systemFont(ofSize: 15)
        descriptionTextView.text = "Lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet Lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet Lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"
        
        return descriptionTextView
    }
}
