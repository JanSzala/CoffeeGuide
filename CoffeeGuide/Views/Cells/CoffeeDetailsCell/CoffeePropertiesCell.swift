//
//  CoffeePropertiesCell.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 22/02/2023.
//

import UIKit
import Foundation

class CoffeePropertiesCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("CoffeeDetailsImageCell Init")
        
        let contentStackView = configureStackView(width: frame.width, height: frame.height)
        self.contentView.addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(countryLabel())
        contentStackView.addArrangedSubview(regionLabel())
        contentStackView.addArrangedSubview(producerLabel())
        contentStackView.addArrangedSubview(locationLabel())
        contentStackView.addArrangedSubview(varietyLabel())
        contentStackView.addArrangedSubview(processingMethodLabel())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CoffeePropertiesCell {
    private func configureStackView(width: CGFloat, height: CGFloat) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        stackView.backgroundColor = UIColor.brown
        return stackView
    }
    
    private func countryLabel() -> UILabel {
        let countryLabel = UILabel()
        countryLabel.text = "Country of origin: Kenia"
        countryLabel.font = countryLabel.font.withSize(16)
        countryLabel.textColor = UIColor.white
        countryLabel.addConstraint(countryLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return countryLabel
    }
    
    private func regionLabel() -> UILabel {
        let countryLabel = UILabel()
        countryLabel.text = "Region: Kyaniaga, Nyeri"
        countryLabel.font = countryLabel.font.withSize(16)
        countryLabel.textColor = UIColor.white
        countryLabel.addConstraint(countryLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return countryLabel
    }
    
    private func producerLabel() -> UILabel {
        let producerLabel = UILabel()
        producerLabel.text = "Producer: New Nergayama Cooperative"
        producerLabel.font = producerLabel.font.withSize(16)
        producerLabel.textColor = UIColor.white
        producerLabel.addConstraint(producerLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return producerLabel
    }
    
    private func locationLabel() -> UILabel {
        let locationLabel = UILabel()
        locationLabel.text = "Location: 1500-1900 meters above sea level"
        locationLabel.font = locationLabel.font.withSize(16)
        locationLabel.textColor = UIColor.white
        locationLabel.addConstraint(locationLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return locationLabel
    }
    
    private func varietyLabel() -> UILabel {
        let varietyLabel = UILabel()
        varietyLabel.text = "Variety: SL28, SL34"
        varietyLabel.font = varietyLabel.font.withSize(16)
        varietyLabel.textColor = UIColor.white
        varietyLabel.addConstraint(varietyLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return varietyLabel
    }
    
    private func processingMethodLabel() -> UILabel {
        let processingMethodLabel = UILabel()
        processingMethodLabel.text = "Processing method: Washed"
        processingMethodLabel.font = processingMethodLabel.font.withSize(16)
        processingMethodLabel.textColor = UIColor.white
        processingMethodLabel.addConstraint(processingMethodLabel.heightAnchor.constraint(equalToConstant: 30))
        
        return processingMethodLabel
    }
}
