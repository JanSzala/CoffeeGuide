//
//  CoffeeViewModel.swift
//  CoffeeGuide
//
//  Created by GLaDOS on 16/02/2023.
//

import Foundation

internal class CoffeeViewModel: CoffeeViewModelType {
    var didSelectCell: ((Int) -> ())?
    
    let cafeCellIdentifier = "CoffeeCollectionViewCell"
    
}
